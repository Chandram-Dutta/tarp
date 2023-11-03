import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tarp/trip_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Trip>> getAllTrips() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [TripSchema],
      directory: dir.path,
    );
    final trips = isar.trips.where().findAll();
    isar.close();
    return trips;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: const Color.fromRGBO(51, 92, 246, 1),
                  child: const Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hey 👋",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 4,
              )
            ],
          ),
          Positioned(
            bottom: 200,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: 450,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FutureBuilder(
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if (snapshot.data!.isEmpty) {
                          return const Center(
                            child: Text("No Trips"),
                          );
                        } else {
                          return ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TripPage(
                                        trip: snapshot.data![index],
                                      ),
                                    ),
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      DateFormat.yMMMMd().format(
                                        snapshot.data![index].date,
                                      ),
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data![index].title,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data![index].location,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: snapshot.data!.length,
                          );
                        }
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                    future: getAllTrips(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            child: Row(
              children: [
                FilledButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateTripPage(),
                    ),
                  ),
                  icon: const Icon(Icons.add),
                  label: const Text("Create New Trip"),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.replay_outlined,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CreateTripPage extends StatefulWidget {
  const CreateTripPage({super.key});

  @override
  State<CreateTripPage> createState() => _CreateTripPageState();
}

class _CreateTripPageState extends State<CreateTripPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  DateTime date = DateTime.now();

  @override
  void dispose() {
    _descriptionController.dispose();
    _locationController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  Future<void> createTrip() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [TripSchema],
      directory: dir.path,
    );
    await isar.writeTxn(() async {
      await isar.trips.put(
        Trip(
          title: _titleController.text,
          location: _locationController.text,
          date: date,
          description: _descriptionController.text,
          hotels: [],
          travels: [],
          stay: [],
          misc: [],
        ),
      ); // insert & update
    });
    isar.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await createTrip();
            if (context.mounted) {
              Navigator.pop(context);
            }
          } catch (e) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(e.toString()),
                ),
              );
            }
          }
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Create Trip"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                ),
              ),
              TextField(
                controller: _locationController,
                decoration: const InputDecoration(
                  labelText: "Location",
                ),
              ),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: "Description",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (date != null) {
                    setState(() {
                      this.date = date;
                    });
                  }
                },
                child: Text(
                  DateFormat.yMMMMd().format(date),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TripPage extends StatelessWidget {
  const TripPage({
    super.key,
    required this.trip,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(trip.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(Icons.location_on),
                title: Text(trip.location),
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month),
                title: Text(DateFormat.yMMMMd().format(trip.date)),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                trip.description,
              ),
              const SizedBox(
                height: 16,
              ),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),
                shrinkWrap: true,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DocumentPage(
                            documents: trip.hotels,
                            index: trip.id,
                            type: "hotels",
                            trip: trip,
                          ),
                        ),
                      );
                    },
                    child: const Card(
                      child: Center(
                        child: Text("Hotels"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DocumentPage(
                            documents: trip.travels,
                            index: trip.id,
                            type: "travels",
                            trip: trip,
                          ),
                        ),
                      );
                    },
                    child: const Card(
                      child: Center(
                        child: Text("Travels"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DocumentPage(
                            documents: trip.stay,
                            index: trip.id,
                            type: "stay",
                            trip: trip,
                          ),
                        ),
                      );
                    },
                    child: const Card(
                      child: Center(
                        child: Text("Stay"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DocumentPage(
                            documents: trip.misc,
                            index: trip.id,
                            type: "misc",
                            trip: trip,
                          ),
                        ),
                      );
                    },
                    child: const Card(
                      child: Center(
                        child: Text("Misc"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DocumentPage extends StatefulWidget {
  const DocumentPage({
    super.key,
    required this.documents,
    required this.index,
    required this.type,
    required this.trip,
  });

  final List<String> documents;
  final Id index;
  final String type;
  final Trip trip;

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  late List<String> _documents;
  @override
  void initState() {
    _documents = widget.documents;
    super.initState();
  }

  Future<void> addDocuments() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final path = result.files.single.path!;
      final dir = await getApplicationDocumentsDirectory();
      final isar = await Isar.open(
        [TripSchema],
        directory: dir.path,
      );
      await isar.writeTxn(() async {
        await isar.trips.delete(widget.trip.id);
        await isar.trips.put(
          widget.trip.copyWith(
            hotels: widget.type == "hotels"
                ? [...widget.trip.hotels, path]
                : widget.trip.hotels,
            travels: widget.type == "travels"
                ? [...widget.trip.travels, path]
                : widget.trip.travels,
            stay: widget.type == "stay"
                ? [...widget.trip.stay, path]
                : widget.trip.stay,
            misc: widget.type == "misc"
                ? [...widget.trip.misc, path]
                : widget.trip.misc,
          ),
        ); // insert & update
      });
      isar.close();
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.type),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addDocuments,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: _documents.length,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        OpenFile.open(_documents[index]);
                      },
                      icon: const Icon(Icons.picture_as_pdf),
                    ),
                    Text(
                      _documents[index].split("/").last,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
