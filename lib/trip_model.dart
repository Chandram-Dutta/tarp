import 'package:isar/isar.dart';
part 'trip_model.g.dart';

@collection
class Trip {
  Id id = Isar.autoIncrement;
  final String title;
  final String location;
  final DateTime date;
  final String description;
  final List<String> hotels;
  final List<String> travels;
  final List<String> stay;
  final List<String> misc;

  Trip({
    required this.title,
    required this.location,
    required this.date,
    required this.description,
    required this.hotels,
    required this.travels,
    required this.stay,
    required this.misc,
  });

  copyWith({
    String? title,
    String? location,
    DateTime? date,
    String? description,
    List<String>? hotels,
    List<String>? travels,
    List<String>? stay,
    List<String>? misc,
  }) {
    return Trip(
      title: title ?? this.title,
      location: location ?? this.location,
      date: date ?? this.date,
      description: description ?? this.description,
      hotels: hotels ?? this.hotels,
      travels: travels ?? this.travels,
      stay: stay ?? this.stay,
      misc: misc ?? this.misc,
    );
  }
}
