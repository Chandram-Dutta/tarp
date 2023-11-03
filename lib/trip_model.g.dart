// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTripCollection on Isar {
  IsarCollection<Trip> get trips => this.collection();
}

const TripSchema = CollectionSchema(
  name: r'Trip',
  id: 2639069002795865543,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'hotels': PropertySchema(
      id: 2,
      name: r'hotels',
      type: IsarType.stringList,
    ),
    r'location': PropertySchema(
      id: 3,
      name: r'location',
      type: IsarType.string,
    ),
    r'misc': PropertySchema(
      id: 4,
      name: r'misc',
      type: IsarType.stringList,
    ),
    r'stay': PropertySchema(
      id: 5,
      name: r'stay',
      type: IsarType.stringList,
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.string,
    ),
    r'travels': PropertySchema(
      id: 7,
      name: r'travels',
      type: IsarType.stringList,
    )
  },
  estimateSize: _tripEstimateSize,
  serialize: _tripSerialize,
  deserialize: _tripDeserialize,
  deserializeProp: _tripDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tripGetId,
  getLinks: _tripGetLinks,
  attach: _tripAttach,
  version: '3.1.0+1',
);

int _tripEstimateSize(
  Trip object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.hotels.length * 3;
  {
    for (var i = 0; i < object.hotels.length; i++) {
      final value = object.hotels[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.location.length * 3;
  bytesCount += 3 + object.misc.length * 3;
  {
    for (var i = 0; i < object.misc.length; i++) {
      final value = object.misc[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.stay.length * 3;
  {
    for (var i = 0; i < object.stay.length; i++) {
      final value = object.stay[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.travels.length * 3;
  {
    for (var i = 0; i < object.travels.length; i++) {
      final value = object.travels[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _tripSerialize(
  Trip object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeString(offsets[1], object.description);
  writer.writeStringList(offsets[2], object.hotels);
  writer.writeString(offsets[3], object.location);
  writer.writeStringList(offsets[4], object.misc);
  writer.writeStringList(offsets[5], object.stay);
  writer.writeString(offsets[6], object.title);
  writer.writeStringList(offsets[7], object.travels);
}

Trip _tripDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Trip(
    date: reader.readDateTime(offsets[0]),
    description: reader.readString(offsets[1]),
    hotels: reader.readStringList(offsets[2]) ?? [],
    location: reader.readString(offsets[3]),
    misc: reader.readStringList(offsets[4]) ?? [],
    stay: reader.readStringList(offsets[5]) ?? [],
    title: reader.readString(offsets[6]),
    travels: reader.readStringList(offsets[7]) ?? [],
  );
  object.id = id;
  return object;
}

P _tripDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tripGetId(Trip object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tripGetLinks(Trip object) {
  return [];
}

void _tripAttach(IsarCollection<dynamic> col, Id id, Trip object) {
  object.id = id;
}

extension TripQueryWhereSort on QueryBuilder<Trip, Trip, QWhere> {
  QueryBuilder<Trip, Trip, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TripQueryWhere on QueryBuilder<Trip, Trip, QWhereClause> {
  QueryBuilder<Trip, Trip, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Trip, Trip, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TripQueryFilter on QueryBuilder<Trip, Trip, QFilterCondition> {
  QueryBuilder<Trip, Trip, QAfterFilterCondition> dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hotels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hotels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hotels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hotels',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hotels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hotels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hotels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hotels',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hotels',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hotels',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hotels',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hotels',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hotels',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hotels',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hotels',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> hotelsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hotels',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'misc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'misc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'misc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'misc',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'misc',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> miscLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'misc',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stay',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stay',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stay',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stay',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stay',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stay',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stay',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stay',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> stayLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stay',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'travels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'travels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'travels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'travels',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'travels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'travels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'travels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'travels',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'travels',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'travels',
        value: '',
      ));
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'travels',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'travels',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'travels',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'travels',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'travels',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Trip, Trip, QAfterFilterCondition> travelsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'travels',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension TripQueryObject on QueryBuilder<Trip, Trip, QFilterCondition> {}

extension TripQueryLinks on QueryBuilder<Trip, Trip, QFilterCondition> {}

extension TripQuerySortBy on QueryBuilder<Trip, Trip, QSortBy> {
  QueryBuilder<Trip, Trip, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension TripQuerySortThenBy on QueryBuilder<Trip, Trip, QSortThenBy> {
  QueryBuilder<Trip, Trip, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Trip, Trip, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension TripQueryWhereDistinct on QueryBuilder<Trip, Trip, QDistinct> {
  QueryBuilder<Trip, Trip, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Trip, Trip, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trip, Trip, QDistinct> distinctByHotels() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hotels');
    });
  }

  QueryBuilder<Trip, Trip, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trip, Trip, QDistinct> distinctByMisc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'misc');
    });
  }

  QueryBuilder<Trip, Trip, QDistinct> distinctByStay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stay');
    });
  }

  QueryBuilder<Trip, Trip, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trip, Trip, QDistinct> distinctByTravels() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'travels');
    });
  }
}

extension TripQueryProperty on QueryBuilder<Trip, Trip, QQueryProperty> {
  QueryBuilder<Trip, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Trip, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Trip, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Trip, List<String>, QQueryOperations> hotelsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hotels');
    });
  }

  QueryBuilder<Trip, String, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<Trip, List<String>, QQueryOperations> miscProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'misc');
    });
  }

  QueryBuilder<Trip, List<String>, QQueryOperations> stayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stay');
    });
  }

  QueryBuilder<Trip, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<Trip, List<String>, QQueryOperations> travelsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'travels');
    });
  }
}
