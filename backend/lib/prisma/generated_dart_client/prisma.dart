// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class UsersCountOutputType {
  const UsersCountOutputType({
    this.places,
    this.trips,
  });

  factory UsersCountOutputType.fromJson(Map json) => UsersCountOutputType(
        places: json['places'],
        trips: json['trips'],
      );

  final int? places;

  final int? trips;

  Map<String, dynamic> toJson() => {
        'places': places,
        'trips': trips,
      };
}

class TripsCountOutputType {
  const TripsCountOutputType({this.places});

  factory TripsCountOutputType.fromJson(Map json) =>
      TripsCountOutputType(places: json['places']);

  final int? places;

  Map<String, dynamic> toJson() => {'places': places};
}

class PlacesCountOutputType {
  const PlacesCountOutputType({this.placeTags});

  factory PlacesCountOutputType.fromJson(Map json) =>
      PlacesCountOutputType(placeTags: json['place_tags']);

  final int? placeTags;

  Map<String, dynamic> toJson() => {'place_tags': placeTags};
}

class TagsCountOutputType {
  const TagsCountOutputType({this.placeTags});

  factory TagsCountOutputType.fromJson(Map json) =>
      TagsCountOutputType(placeTags: json['place_tags']);

  final int? placeTags;

  Map<String, dynamic> toJson() => {'place_tags': placeTags};
}

class PlaceTagsPlaceIdTagIdCompoundUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsPlaceIdTagIdCompoundUniqueInput({
    required this.placeId,
    required this.tagId,
  });

  final int placeId;

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedDateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class PlaceTagsListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PlaceTagsWhereInput? every;

  final _i2.PlaceTagsWhereInput? some;

  final _i2.PlaceTagsWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class PlacesListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PlacesWhereInput? every;

  final _i2.PlacesWhereInput? some;

  final _i2.PlacesWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class TripsListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.TripsWhereInput? every;

  final _i2.TripsWhereInput? some;

  final _i2.TripsWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UsersWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
  });

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      AND;

  final Iterable<_i2.UsersWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? lastName;

  final _i2.PlacesListRelationFilter? places;

  final _i2.TripsListRelationFilter? trips;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
      };
}

class UsersRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.UsersWhereInput? $is;

  final _i2.UsersWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class TripsWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final _i1.PrismaUnion<_i2.TripsWhereInput, Iterable<_i2.TripsWhereInput>>?
      AND;

  final Iterable<_i2.TripsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripsWhereInput, Iterable<_i2.TripsWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  final _i2.PlacesListRelationFilter? places;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
        'users': users,
      };
}

class TripsRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.TripsWhereInput? $is;

  final _i2.TripsWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class PlacesWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.trips,
    this.users,
  });

  final _i1.PrismaUnion<_i2.PlacesWhereInput, Iterable<_i2.PlacesWhereInput>>?
      AND;

  final Iterable<_i2.PlacesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlacesWhereInput, Iterable<_i2.PlacesWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startTime;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsListRelationFilter? placeTags;

  final _i1.PrismaUnion<_i2.TripsRelationFilter, _i2.TripsWhereInput>? trips;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
        'users': users,
      };
}

class PlacesRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.PlacesWhereInput? $is;

  final _i2.PlacesWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class TagsWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.tagId,
    this.tagName,
    this.description,
    this.placeTags,
  });

  final _i1.PrismaUnion<_i2.TagsWhereInput, Iterable<_i2.TagsWhereInput>>? AND;

  final Iterable<_i2.TagsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagsWhereInput, Iterable<_i2.TagsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tagId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tagName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i2.PlaceTagsListRelationFilter? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags,
      };
}

class TagsRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.TagsWhereInput? $is;

  final _i2.TagsWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class PlaceTagsWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
    this.places,
    this.tags,
  });

  final _i1
      .PrismaUnion<_i2.PlaceTagsWhereInput, Iterable<_i2.PlaceTagsWhereInput>>?
      AND;

  final Iterable<_i2.PlaceTagsWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.PlaceTagsWhereInput, Iterable<_i2.PlaceTagsWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tagId;

  final _i1.PrismaUnion<_i2.PlacesRelationFilter, _i2.PlacesWhereInput>? places;

  final _i1.PrismaUnion<_i2.TagsRelationFilter, _i2.TagsWhereInput>? tags;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'place_id': placeId,
        'tag_id': tagId,
        'places': places,
        'tags': tags,
      };
}

class PlaceTagsWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsWhereUniqueInput({
    this.placeIdTagId,
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
    this.places,
    this.tags,
  });

  final _i2.PlaceTagsPlaceIdTagIdCompoundUniqueInput? placeIdTagId;

  final _i1
      .PrismaUnion<_i2.PlaceTagsWhereInput, Iterable<_i2.PlaceTagsWhereInput>>?
      AND;

  final Iterable<_i2.PlaceTagsWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.PlaceTagsWhereInput, Iterable<_i2.PlaceTagsWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tagId;

  final _i1.PrismaUnion<_i2.PlacesRelationFilter, _i2.PlacesWhereInput>? places;

  final _i1.PrismaUnion<_i2.TagsRelationFilter, _i2.TagsWhereInput>? tags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id_tag_id': placeIdTagId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'place_id': placeId,
        'tag_id': tagId,
        'places': places,
        'tags': tags,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class PlaceTagsOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PlacesOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class TripsOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class UsersOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOrderByWithRelationInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? username;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? firstName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? lastName;

  final _i2.PlacesOrderByRelationAggregateInput? places;

  final _i2.TripsOrderByRelationAggregateInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
      };
}

class TripsOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsOrderByWithRelationInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? endDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? createdAt;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? updatedAt;

  final _i2.PlacesOrderByRelationAggregateInput? places;

  final _i2.UsersOrderByWithRelationInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
        'users': users,
      };
}

class PlacesOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesOrderByWithRelationInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.trips,
    this.users,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startTime;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? endTime;

  final _i2.PlaceTagsOrderByRelationAggregateInput? placeTags;

  final _i2.TripsOrderByWithRelationInput? trips;

  final _i2.UsersOrderByWithRelationInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
        'users': users,
      };
}

class TagsOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOrderByWithRelationInput({
    this.tagId,
    this.tagName,
    this.description,
    this.placeTags,
  });

  final _i2.SortOrder? tagId;

  final _i2.SortOrder? tagName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.PlaceTagsOrderByRelationAggregateInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags,
      };
}

class PlaceTagsOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsOrderByWithRelationInput({
    this.placeId,
    this.tagId,
    this.places,
    this.tags,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  final _i2.PlacesOrderByWithRelationInput? places;

  final _i2.TagsOrderByWithRelationInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        'places': places,
        'tags': tags,
      };
}

enum PlaceTagsScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  placeId<int>('place_id', 'place_tags'),
  tagId<int>('tag_id', 'place_tags');

  const PlaceTagsScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PlacesPlaceTagsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesPlaceTagsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PlaceTagsWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PlaceTagsOrderByWithRelationInput>,
      _i2.PlaceTagsOrderByWithRelationInput>? orderBy;

  final _i2.PlaceTagsWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PlaceTagsScalar, Iterable<_i2.PlaceTagsScalar>>?
      distinct;

  final _i2.PlaceTagsSelect? select;

  final _i2.PlaceTagsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class PlacesWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesWhereUniqueInput({
    this.placeId,
    this.AND,
    this.OR,
    this.NOT,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.trips,
    this.users,
  });

  final int? placeId;

  final _i1.PrismaUnion<_i2.PlacesWhereInput, Iterable<_i2.PlacesWhereInput>>?
      AND;

  final Iterable<_i2.PlacesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlacesWhereInput, Iterable<_i2.PlacesWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startTime;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsListRelationFilter? placeTags;

  final _i1.PrismaUnion<_i2.TripsRelationFilter, _i2.TripsWhereInput>? trips;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
        'users': users,
      };
}

enum PlacesScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  placeId<int>('place_id', 'places'),
  tripId<int>('trip_id', 'places'),
  userId<int>('user_id', 'places'),
  title<String>('title', 'places'),
  description<String>('description', 'places'),
  startTime<DateTime>('start_time', 'places'),
  endTime<DateTime>('end_time', 'places');

  const PlacesScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TripsPlacesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsPlacesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PlacesWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PlacesOrderByWithRelationInput>,
      _i2.PlacesOrderByWithRelationInput>? orderBy;

  final _i2.PlacesWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PlacesScalar, Iterable<_i2.PlacesScalar>>? distinct;

  final _i2.PlacesSelect? select;

  final _i2.PlacesInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UsersPlacesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersPlacesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PlacesWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PlacesOrderByWithRelationInput>,
      _i2.PlacesOrderByWithRelationInput>? orderBy;

  final _i2.PlacesWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PlacesScalar, Iterable<_i2.PlacesScalar>>? distinct;

  final _i2.PlacesSelect? select;

  final _i2.PlacesInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class TripsWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsWhereUniqueInput({
    this.tripId,
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final int? tripId;

  final _i1.PrismaUnion<_i2.TripsWhereInput, Iterable<_i2.TripsWhereInput>>?
      AND;

  final Iterable<_i2.TripsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripsWhereInput, Iterable<_i2.TripsWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  final _i2.PlacesListRelationFilter? places;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
        'users': users,
      };
}

enum TripsScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  tripId<int>('trip_id', 'trips'),
  userId<int>('user_id', 'trips'),
  title<String>('title', 'trips'),
  description<String>('description', 'trips'),
  startDate<DateTime>('start_date', 'trips'),
  endDate<DateTime>('end_date', 'trips'),
  createdAt<DateTime>('created_at', 'trips'),
  updatedAt<DateTime>('updated_at', 'trips');

  const TripsScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UsersTripsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersTripsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.TripsWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.TripsOrderByWithRelationInput>,
      _i2.TripsOrderByWithRelationInput>? orderBy;

  final _i2.TripsWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.TripsScalar, Iterable<_i2.TripsScalar>>? distinct;

  final _i2.TripsSelect? select;

  final _i2.TripsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UsersCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountOutputTypeSelect({
    this.places,
    this.trips,
  });

  final bool? places;

  final bool? trips;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'trips': trips,
      };
}

class UsersCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountArgs({this.select});

  final _i2.UsersCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersInclude({
    this.places,
    this.trips,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UsersPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.UsersTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.UsersCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'trips': trips,
        '_count': $count,
      };
}

class TripsUsersArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class TripsCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCountOutputTypeSelect({this.places});

  final bool? places;

  @override
  Map<String, dynamic> toJson() => {'places': places};
}

class TripsCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCountArgs({this.select});

  final _i2.TripsCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripsInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsInclude({
    this.places,
    this.users,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.TripsPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TripsUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.TripsCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'users': users,
        '_count': $count,
      };
}

class UsersSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersSelect({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
    this.$count,
  });

  final bool? userId;

  final bool? username;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final _i1.PrismaUnion<bool, _i2.UsersPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.UsersTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.UsersCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
        '_count': $count,
      };
}

class TripsSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsSelect({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
    this.$count,
  });

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.TripsPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TripsUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.TripsCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
        'users': users,
        '_count': $count,
      };
}

class PlacesTripsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesTripsArgs({
    this.select,
    this.include,
  });

  final _i2.TripsSelect? select;

  final _i2.TripsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PlacesUsersArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PlacesCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCountOutputTypeSelect({this.placeTags});

  final bool? placeTags;

  @override
  Map<String, dynamic> toJson() => {'place_tags': placeTags};
}

class PlacesCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCountArgs({this.select});

  final _i2.PlacesCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlacesInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesInclude({
    this.placeTags,
    this.trips,
    this.users,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.PlacesPlaceTagsArgs>? placeTags;

  final _i1.PrismaUnion<bool, _i2.PlacesTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.PlacesUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.PlacesCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'place_tags': placeTags,
        'trips': trips,
        'users': users,
        '_count': $count,
      };
}

class PlaceTagsPlacesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsPlacesArgs({
    this.select,
    this.include,
  });

  final _i2.PlacesSelect? select;

  final _i2.PlacesInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class TagsPlaceTagsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsPlaceTagsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PlaceTagsWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PlaceTagsOrderByWithRelationInput>,
      _i2.PlaceTagsOrderByWithRelationInput>? orderBy;

  final _i2.PlaceTagsWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PlaceTagsScalar, Iterable<_i2.PlaceTagsScalar>>?
      distinct;

  final _i2.PlaceTagsSelect? select;

  final _i2.PlaceTagsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class TagsCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCountOutputTypeSelect({this.placeTags});

  final bool? placeTags;

  @override
  Map<String, dynamic> toJson() => {'place_tags': placeTags};
}

class TagsCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCountArgs({this.select});

  final _i2.TagsCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsSelect({
    this.tagId,
    this.tagName,
    this.description,
    this.placeTags,
    this.$count,
  });

  final bool? tagId;

  final bool? tagName;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.TagsPlaceTagsArgs>? placeTags;

  final _i1.PrismaUnion<bool, _i2.TagsCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags,
        '_count': $count,
      };
}

class TagsInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsInclude({
    this.placeTags,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.TagsPlaceTagsArgs>? placeTags;

  final _i1.PrismaUnion<bool, _i2.TagsCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'place_tags': placeTags,
        '_count': $count,
      };
}

class PlaceTagsTagsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsTagsArgs({
    this.select,
    this.include,
  });

  final _i2.TagsSelect? select;

  final _i2.TagsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PlaceTagsInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsInclude({
    this.places,
    this.tags,
  });

  final _i1.PrismaUnion<bool, _i2.PlaceTagsPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsTagsArgs>? tags;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'tags': tags,
      };
}

class PlacesSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesSelect({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.trips,
    this.users,
    this.$count,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startTime;

  final bool? endTime;

  final _i1.PrismaUnion<bool, _i2.PlacesPlaceTagsArgs>? placeTags;

  final _i1.PrismaUnion<bool, _i2.PlacesTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.PlacesUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.PlacesCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
        'users': users,
        '_count': $count,
      };
}

class PlaceTagsSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsSelect({
    this.placeId,
    this.tagId,
    this.places,
    this.tags,
  });

  final bool? placeId;

  final bool? tagId;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsTagsArgs>? tags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        'places': places,
        'tags': tags,
      };
}

class TagsCreateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCreateWithoutPlaceTagsInput({
    required this.tagName,
    this.description,
  });

  final String tagName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_name': tagName,
        'description': description,
      };
}

class TagsUncheckedCreateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUncheckedCreateWithoutPlaceTagsInput({
    this.tagId,
    required this.tagName,
    this.description,
  });

  final int? tagId;

  final String tagName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsWhereUniqueInput({
    this.tagId,
    this.tagName,
    this.AND,
    this.OR,
    this.NOT,
    this.description,
    this.placeTags,
  });

  final int? tagId;

  final String? tagName;

  final _i1.PrismaUnion<_i2.TagsWhereInput, Iterable<_i2.TagsWhereInput>>? AND;

  final Iterable<_i2.TagsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagsWhereInput, Iterable<_i2.TagsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i2.PlaceTagsListRelationFilter? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'description': description,
        'place_tags': placeTags,
      };
}

class TagsCreateOrConnectWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCreateOrConnectWithoutPlaceTagsInput({
    required this.where,
    required this.create,
  });

  final _i2.TagsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagsCreateWithoutPlaceTagsInput,
      _i2.TagsUncheckedCreateWithoutPlaceTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TagsCreateNestedOneWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCreateNestedOneWithoutPlaceTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TagsCreateWithoutPlaceTagsInput,
      _i2.TagsUncheckedCreateWithoutPlaceTagsInput>? create;

  final _i2.TagsCreateOrConnectWithoutPlaceTagsInput? connectOrCreate;

  final _i2.TagsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlaceTagsCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateWithoutPlacesInput({required this.tags});

  final _i2.TagsCreateNestedOneWithoutPlaceTagsInput tags;

  @override
  Map<String, dynamic> toJson() => {'tags': tags};
}

class PlaceTagsUncheckedCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedCreateWithoutPlacesInput({required this.tagId});

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class PlaceTagsCreateOrConnectWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateOrConnectWithoutPlacesInput({
    required this.where,
    required this.create,
  });

  final _i2.PlaceTagsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateWithoutPlacesInput,
      _i2.PlaceTagsUncheckedCreateWithoutPlacesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlaceTagsCreateManyPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateManyPlacesInput({required this.tagId});

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class PlaceTagsCreateManyPlacesInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateManyPlacesInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PlaceTagsCreateManyPlacesInput,
      Iterable<_i2.PlaceTagsCreateManyPlacesInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PlaceTagsCreateNestedManyWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateNestedManyWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PlaceTagsCreateWithoutPlacesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PlaceTagsCreateWithoutPlacesInput>,
              _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput,
                  Iterable<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput,
          Iterable<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput>>?
      connectOrCreate;

  final _i2.PlaceTagsCreateManyPlacesInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlacesCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateWithoutUsersInput({
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    this.placeTags,
    required this.trips,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  final _i2.PlaceTagsCreateNestedManyWithoutPlacesInput? placeTags;

  final _i2.TripsCreateNestedOneWithoutPlacesInput trips;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
      };
}

class PlaceTagsUncheckedCreateNestedManyWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedCreateNestedManyWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.PlaceTagsCreateWithoutPlacesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PlaceTagsCreateWithoutPlacesInput>,
              _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput,
                  Iterable<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput,
          Iterable<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput>>?
      connectOrCreate;

  final _i2.PlaceTagsCreateManyPlacesInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlacesUncheckedCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedCreateWithoutUsersInput({
    this.placeId,
    required this.tripId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    this.placeTags,
  });

  final int? placeId;

  final int tripId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  final _i2.PlaceTagsUncheckedCreateNestedManyWithoutPlacesInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
      };
}

class PlacesCreateOrConnectWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateOrConnectWithoutUsersInput({
    required this.where,
    required this.create,
  });

  final _i2.PlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutUsersInput,
      _i2.PlacesUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlacesCreateManyUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateManyUsersInput({
    this.placeId,
    required this.tripId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
  });

  final int? placeId;

  final int tripId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesCreateManyUsersInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateManyUsersInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PlacesCreateManyUsersInput,
      Iterable<_i2.PlacesCreateManyUsersInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PlacesCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutUsersInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutUsersInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i2.PlacesCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateWithoutTripsInput({
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.places,
  });

  final String username;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? firstName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? lastName;

  final _i2.PlacesCreateNestedManyWithoutUsersInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
      };
}

class PlacesUncheckedCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutUsersInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutUsersInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i2.PlacesCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersUncheckedCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedCreateWithoutTripsInput({
    this.userId,
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.places,
  });

  final int? userId;

  final String username;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? firstName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? lastName;

  final _i2.PlacesUncheckedCreateNestedManyWithoutUsersInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
      };
}

class UsersWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersWhereUniqueInput({
    this.userId,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.username,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
  });

  final int? userId;

  final String? email;

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      AND;

  final Iterable<_i2.UsersWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? lastName;

  final _i2.PlacesListRelationFilter? places;

  final _i2.TripsListRelationFilter? trips;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'username': username,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
      };
}

class UsersCreateOrConnectWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateOrConnectWithoutTripsInput({
    required this.where,
    required this.create,
  });

  final _i2.UsersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutTripsInput,
      _i2.UsersUncheckedCreateWithoutTripsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsersCreateNestedOneWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateNestedOneWithoutTripsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutTripsInput,
      _i2.UsersUncheckedCreateWithoutTripsInput>? create;

  final _i2.UsersCreateOrConnectWithoutTripsInput? connectOrCreate;

  final _i2.UsersWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TripsCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateWithoutPlacesInput({
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    required this.users,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final _i2.UsersCreateNestedOneWithoutTripsInput users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'users': users,
      };
}

class TripsUncheckedCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedCreateWithoutPlacesInput({
    this.tripId,
    required this.userId,
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final int? tripId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsCreateOrConnectWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateOrConnectWithoutPlacesInput({
    required this.where,
    required this.create,
  });

  final _i2.TripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripsCreateWithoutPlacesInput,
      _i2.TripsUncheckedCreateWithoutPlacesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TripsCreateNestedOneWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateNestedOneWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TripsCreateWithoutPlacesInput,
      _i2.TripsUncheckedCreateWithoutPlacesInput>? create;

  final _i2.TripsCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.TripsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlacesCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateWithoutTripsInput({
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    this.placeTags,
    required this.users,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  final _i2.PlaceTagsCreateNestedManyWithoutPlacesInput? placeTags;

  final _i2.UsersCreateNestedOneWithoutPlacesInput users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'users': users,
      };
}

class PlacesUncheckedCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedCreateWithoutTripsInput({
    this.placeId,
    required this.userId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    this.placeTags,
  });

  final int? placeId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  final _i2.PlaceTagsUncheckedCreateNestedManyWithoutPlacesInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
      };
}

class PlacesCreateOrConnectWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateOrConnectWithoutTripsInput({
    required this.where,
    required this.create,
  });

  final _i2.PlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutTripsInput,
      _i2.PlacesUncheckedCreateWithoutTripsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlacesCreateManyTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateManyTripsInput({
    this.placeId,
    required this.userId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
  });

  final int? placeId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesCreateManyTripsInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateManyTripsInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PlacesCreateManyTripsInput,
      Iterable<_i2.PlacesCreateManyTripsInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PlacesCreateNestedManyWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateNestedManyWithoutTripsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutTripsInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutTripsInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i2.PlacesCreateManyTripsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TripsCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateWithoutUsersInput({
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final _i2.PlacesCreateNestedManyWithoutTripsInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
      };
}

class PlacesUncheckedCreateNestedManyWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedCreateNestedManyWithoutTripsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutTripsInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutTripsInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i2.PlacesCreateManyTripsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TripsUncheckedCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedCreateWithoutUsersInput({
    this.tripId,
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final int? tripId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final _i2.PlacesUncheckedCreateNestedManyWithoutTripsInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
      };
}

class TripsCreateOrConnectWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateOrConnectWithoutUsersInput({
    required this.where,
    required this.create,
  });

  final _i2.TripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripsCreateWithoutUsersInput,
      _i2.TripsUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TripsCreateManyUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateManyUsersInput({
    this.tripId,
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final int? tripId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsCreateManyUsersInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateManyUsersInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.TripsCreateManyUsersInput,
      Iterable<_i2.TripsCreateManyUsersInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class TripsCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TripsCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripsCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripsUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripsUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripsCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripsCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i2.TripsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateWithoutPlacesInput({
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.trips,
  });

  final String username;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? firstName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? lastName;

  final _i2.TripsCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'trips': trips,
      };
}

class TripsUncheckedCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TripsCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripsCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripsUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripsUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripsCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripsCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i2.TripsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersUncheckedCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedCreateWithoutPlacesInput({
    this.userId,
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.trips,
  });

  final int? userId;

  final String username;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? firstName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? lastName;

  final _i2.TripsUncheckedCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'trips': trips,
      };
}

class UsersCreateOrConnectWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateOrConnectWithoutPlacesInput({
    required this.where,
    required this.create,
  });

  final _i2.UsersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutPlacesInput,
      _i2.UsersUncheckedCreateWithoutPlacesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsersCreateNestedOneWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateNestedOneWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutPlacesInput,
      _i2.UsersUncheckedCreateWithoutPlacesInput>? create;

  final _i2.UsersCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.UsersWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlacesCreateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateWithoutPlaceTagsInput({
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    required this.trips,
    required this.users,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  final _i2.TripsCreateNestedOneWithoutPlacesInput trips;

  final _i2.UsersCreateNestedOneWithoutPlacesInput users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'trips': trips,
        'users': users,
      };
}

class PlacesUncheckedCreateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedCreateWithoutPlaceTagsInput({
    this.placeId,
    required this.tripId,
    required this.userId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
  });

  final int? placeId;

  final int tripId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesCreateOrConnectWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateOrConnectWithoutPlaceTagsInput({
    required this.where,
    required this.create,
  });

  final _i2.PlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutPlaceTagsInput,
      _i2.PlacesUncheckedCreateWithoutPlaceTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlacesCreateNestedOneWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateNestedOneWithoutPlaceTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutPlaceTagsInput,
      _i2.PlacesUncheckedCreateWithoutPlaceTagsInput>? create;

  final _i2.PlacesCreateOrConnectWithoutPlaceTagsInput? connectOrCreate;

  final _i2.PlacesWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlaceTagsCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateInput({
    required this.places,
    required this.tags,
  });

  final _i2.PlacesCreateNestedOneWithoutPlaceTagsInput places;

  final _i2.TagsCreateNestedOneWithoutPlaceTagsInput tags;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'tags': tags,
      };
}

class PlaceTagsUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedCreateInput({
    required this.placeId,
    required this.tagId,
  });

  final int placeId;

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class PlaceTagsCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateManyInput({
    required this.placeId,
    required this.tagId,
  });

  final int placeId;

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class CreateManyplaceTagsAndReturnOutputTypePlacesArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplaceTagsAndReturnOutputTypePlacesArgs({
    this.select,
    this.include,
  });

  final _i2.PlacesSelect? select;

  final _i2.PlacesInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyplaceTagsAndReturnOutputTypeTagsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplaceTagsAndReturnOutputTypeTagsArgs({
    this.select,
    this.include,
  });

  final _i2.TagsSelect? select;

  final _i2.TagsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyplaceTagsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplaceTagsAndReturnOutputTypeSelect({
    this.placeId,
    this.tagId,
    this.places,
    this.tags,
  });

  final bool? placeId;

  final bool? tagId;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyplaceTagsAndReturnOutputTypePlacesArgs>?
      places;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyplaceTagsAndReturnOutputTypeTagsArgs>?
      tags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        'places': places,
        'tags': tags,
      };
}

class CreateManyplaceTagsAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplaceTagsAndReturnOutputTypeInclude({
    this.places,
    this.tags,
  });

  final _i1
      .PrismaUnion<bool, _i2.CreateManyplaceTagsAndReturnOutputTypePlacesArgs>?
      places;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyplaceTagsAndReturnOutputTypeTagsArgs>?
      tags;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'tags': tags,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class TagsUpdateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUpdateWithoutPlaceTagsInput({
    this.tagName,
    this.description,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_name': tagName,
        'description': description,
      };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class TagsUncheckedUpdateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUncheckedUpdateWithoutPlaceTagsInput({
    this.tagId,
    this.tagName,
    this.description,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsUpsertWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUpsertWithoutPlaceTagsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.TagsUpdateWithoutPlaceTagsInput,
      _i2.TagsUncheckedUpdateWithoutPlaceTagsInput> update;

  final _i1.PrismaUnion<_i2.TagsCreateWithoutPlaceTagsInput,
      _i2.TagsUncheckedCreateWithoutPlaceTagsInput> create;

  final _i2.TagsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class TagsUpdateToOneWithWhereWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUpdateToOneWithWhereWithoutPlaceTagsInput({
    this.where,
    required this.data,
  });

  final _i2.TagsWhereInput? where;

  final _i1.PrismaUnion<_i2.TagsUpdateWithoutPlaceTagsInput,
      _i2.TagsUncheckedUpdateWithoutPlaceTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagsUpdateOneRequiredWithoutPlaceTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUpdateOneRequiredWithoutPlaceTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TagsCreateWithoutPlaceTagsInput,
      _i2.TagsUncheckedCreateWithoutPlaceTagsInput>? create;

  final _i2.TagsCreateOrConnectWithoutPlaceTagsInput? connectOrCreate;

  final _i2.TagsUpsertWithoutPlaceTagsInput? upsert;

  final _i2.TagsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TagsUpdateToOneWithWhereWithoutPlaceTagsInput,
      _i1.PrismaUnion<_i2.TagsUpdateWithoutPlaceTagsInput,
          _i2.TagsUncheckedUpdateWithoutPlaceTagsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PlaceTagsUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateWithoutPlacesInput({this.tags});

  final _i2.TagsUpdateOneRequiredWithoutPlaceTagsNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {'tags': tags};
}

class PlaceTagsUncheckedUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateWithoutPlacesInput({this.tagId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class PlaceTagsUpsertWithWhereUniqueWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpsertWithWhereUniqueWithoutPlacesInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlaceTagsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithoutPlacesInput,
      _i2.PlaceTagsUncheckedUpdateWithoutPlacesInput> update;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateWithoutPlacesInput,
      _i2.PlaceTagsUncheckedCreateWithoutPlacesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlaceTagsUpdateWithWhereUniqueWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateWithWhereUniqueWithoutPlacesInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceTagsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithoutPlacesInput,
      _i2.PlaceTagsUncheckedUpdateWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceTagsScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereInput,
      Iterable<_i2.PlaceTagsScalarWhereInput>>? AND;

  final Iterable<_i2.PlaceTagsScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereInput,
      Iterable<_i2.PlaceTagsScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateManyMutationInput();

  @override
  Map<String, dynamic> toJson() => {};
}

class PlaceTagsUncheckedUpdateManyWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateManyWithoutPlacesInput({this.tagId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class PlaceTagsUpdateManyWithWhereWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateManyWithWhereWithoutPlacesInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceTagsScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateManyMutationInput,
      _i2.PlaceTagsUncheckedUpdateManyWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceTagsUpdateManyWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateManyWithoutPlacesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PlaceTagsCreateWithoutPlacesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PlaceTagsCreateWithoutPlacesInput>,
              _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput,
                  Iterable<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput,
          Iterable<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceTagsUpsertWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.PlaceTagsUpsertWithWhereUniqueWithoutPlacesInput>>? upsert;

  final _i2.PlaceTagsCreateManyPlacesInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.PlaceTagsUpdateWithWhereUniqueWithoutPlacesInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateManyWithWhereWithoutPlacesInput,
      Iterable<_i2.PlaceTagsUpdateManyWithWhereWithoutPlacesInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereInput,
      Iterable<_i2.PlaceTagsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PlacesUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateWithoutUsersInput({
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.trips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsUpdateManyWithoutPlacesNestedInput? placeTags;

  final _i2.TripsUpdateOneRequiredWithoutPlacesNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
      };
}

class PlaceTagsUncheckedUpdateManyWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateManyWithoutPlacesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.PlaceTagsCreateWithoutPlacesInput,
          _i1.PrismaUnion<
              Iterable<_i2.PlaceTagsCreateWithoutPlacesInput>,
              _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput,
                  Iterable<_i2.PlaceTagsUncheckedCreateWithoutPlacesInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput,
          Iterable<_i2.PlaceTagsCreateOrConnectWithoutPlacesInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceTagsUpsertWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.PlaceTagsUpsertWithWhereUniqueWithoutPlacesInput>>? upsert;

  final _i2.PlaceTagsCreateManyPlacesInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.PlaceTagsUpdateWithWhereUniqueWithoutPlacesInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateManyWithWhereWithoutPlacesInput,
      Iterable<_i2.PlaceTagsUpdateManyWithWhereWithoutPlacesInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereInput,
      Iterable<_i2.PlaceTagsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PlacesUncheckedUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateWithoutUsersInput({
    this.placeId,
    this.tripId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsUncheckedUpdateManyWithoutPlacesNestedInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
      };
}

class PlacesUpsertWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpsertWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithoutUsersInput,
      _i2.PlacesUncheckedUpdateWithoutUsersInput> update;

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutUsersInput,
      _i2.PlacesUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlacesUpdateWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.PlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithoutUsersInput,
      _i2.PlacesUncheckedUpdateWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlacesScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i1.PrismaUnion<_i2.PlacesScalarWhereInput,
      Iterable<_i2.PlacesScalarWhereInput>>? AND;

  final Iterable<_i2.PlacesScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlacesScalarWhereInput,
      Iterable<_i2.PlacesScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startTime;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateManyMutationInput({
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesUncheckedUpdateManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateManyWithoutUsersInput({
    this.placeId,
    this.tripId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesUpdateManyWithWhereWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateManyWithWhereWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.PlacesScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlacesUpdateManyMutationInput,
      _i2.PlacesUncheckedUpdateManyWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlacesUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutUsersInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutUsersInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlacesUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.PlacesUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i2.PlacesCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.PlacesUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.PlacesUpdateManyWithWhereWithoutUsersInput,
      Iterable<_i2.PlacesUpdateManyWithWhereWithoutUsersInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlacesScalarWhereInput,
      Iterable<_i2.PlacesScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateWithoutTripsInput({
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  final _i2.PlacesUpdateManyWithoutUsersNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
      };
}

class PlacesUncheckedUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutUsersInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutUsersInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlacesUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.PlacesUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i2.PlacesCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.PlacesUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.PlacesUpdateManyWithWhereWithoutUsersInput,
      Iterable<_i2.PlacesUpdateManyWithWhereWithoutUsersInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlacesScalarWhereInput,
      Iterable<_i2.PlacesScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUncheckedUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateWithoutTripsInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  final _i2.PlacesUncheckedUpdateManyWithoutUsersNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
      };
}

class UsersUpsertWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpsertWithoutTripsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutTripsInput,
      _i2.UsersUncheckedUpdateWithoutTripsInput> update;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutTripsInput,
      _i2.UsersUncheckedCreateWithoutTripsInput> create;

  final _i2.UsersWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsersUpdateToOneWithWhereWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateToOneWithWhereWithoutTripsInput({
    this.where,
    required this.data,
  });

  final _i2.UsersWhereInput? where;

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutTripsInput,
      _i2.UsersUncheckedUpdateWithoutTripsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersUpdateOneRequiredWithoutTripsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateOneRequiredWithoutTripsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutTripsInput,
      _i2.UsersUncheckedCreateWithoutTripsInput>? create;

  final _i2.UsersCreateOrConnectWithoutTripsInput? connectOrCreate;

  final _i2.UsersUpsertWithoutTripsInput? upsert;

  final _i2.UsersWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsersUpdateToOneWithWhereWithoutTripsInput,
      _i1.PrismaUnion<_i2.UsersUpdateWithoutTripsInput,
          _i2.UsersUncheckedUpdateWithoutTripsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class TripsUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateWithoutPlacesInput({
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i2.UsersUpdateOneRequiredWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'users': users,
      };
}

class TripsUncheckedUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedUpdateWithoutPlacesInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsUpsertWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpsertWithoutPlacesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.TripsUpdateWithoutPlacesInput,
      _i2.TripsUncheckedUpdateWithoutPlacesInput> update;

  final _i1.PrismaUnion<_i2.TripsCreateWithoutPlacesInput,
      _i2.TripsUncheckedCreateWithoutPlacesInput> create;

  final _i2.TripsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class TripsUpdateToOneWithWhereWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateToOneWithWhereWithoutPlacesInput({
    this.where,
    required this.data,
  });

  final _i2.TripsWhereInput? where;

  final _i1.PrismaUnion<_i2.TripsUpdateWithoutPlacesInput,
      _i2.TripsUncheckedUpdateWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TripsUpdateOneRequiredWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateOneRequiredWithoutPlacesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TripsCreateWithoutPlacesInput,
      _i2.TripsUncheckedCreateWithoutPlacesInput>? create;

  final _i2.TripsCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.TripsUpsertWithoutPlacesInput? upsert;

  final _i2.TripsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TripsUpdateToOneWithWhereWithoutPlacesInput,
      _i1.PrismaUnion<_i2.TripsUpdateWithoutPlacesInput,
          _i2.TripsUncheckedUpdateWithoutPlacesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PlacesUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateWithoutTripsInput({
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsUpdateManyWithoutPlacesNestedInput? placeTags;

  final _i2.UsersUpdateOneRequiredWithoutPlacesNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'users': users,
      };
}

class PlacesUncheckedUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateWithoutTripsInput({
    this.placeId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsUncheckedUpdateManyWithoutPlacesNestedInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
      };
}

class PlacesUpsertWithWhereUniqueWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpsertWithWhereUniqueWithoutTripsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithoutTripsInput,
      _i2.PlacesUncheckedUpdateWithoutTripsInput> update;

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutTripsInput,
      _i2.PlacesUncheckedCreateWithoutTripsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlacesUpdateWithWhereUniqueWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateWithWhereUniqueWithoutTripsInput({
    required this.where,
    required this.data,
  });

  final _i2.PlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithoutTripsInput,
      _i2.PlacesUncheckedUpdateWithoutTripsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlacesUncheckedUpdateManyWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateManyWithoutTripsInput({
    this.placeId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesUpdateManyWithWhereWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateManyWithWhereWithoutTripsInput({
    required this.where,
    required this.data,
  });

  final _i2.PlacesScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlacesUpdateManyMutationInput,
      _i2.PlacesUncheckedUpdateManyWithoutTripsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlacesUpdateManyWithoutTripsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateManyWithoutTripsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutTripsInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutTripsInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlacesUpsertWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.PlacesUpsertWithWhereUniqueWithoutTripsInput>>? upsert;

  final _i2.PlacesCreateManyTripsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.PlacesUpdateWithWhereUniqueWithoutTripsInput>>? update;

  final _i1.PrismaUnion<_i2.PlacesUpdateManyWithWhereWithoutTripsInput,
      Iterable<_i2.PlacesUpdateManyWithWhereWithoutTripsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlacesScalarWhereInput,
      Iterable<_i2.PlacesScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TripsUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateWithoutUsersInput({
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i2.PlacesUpdateManyWithoutTripsNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
      };
}

class PlacesUncheckedUpdateManyWithoutTripsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateManyWithoutTripsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlacesCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlacesCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.PlacesUncheckedCreateWithoutTripsInput,
              Iterable<_i2.PlacesUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlacesCreateOrConnectWithoutTripsInput,
      Iterable<_i2.PlacesCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlacesUpsertWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.PlacesUpsertWithWhereUniqueWithoutTripsInput>>? upsert;

  final _i2.PlacesCreateManyTripsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlacesWhereUniqueInput,
      Iterable<_i2.PlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.PlacesUpdateWithWhereUniqueWithoutTripsInput>>? update;

  final _i1.PrismaUnion<_i2.PlacesUpdateManyWithWhereWithoutTripsInput,
      Iterable<_i2.PlacesUpdateManyWithWhereWithoutTripsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlacesScalarWhereInput,
      Iterable<_i2.PlacesScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TripsUncheckedUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedUpdateWithoutUsersInput({
    this.tripId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i2.PlacesUncheckedUpdateManyWithoutTripsNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
      };
}

class TripsUpsertWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpsertWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripsUpdateWithoutUsersInput,
      _i2.TripsUncheckedUpdateWithoutUsersInput> update;

  final _i1.PrismaUnion<_i2.TripsCreateWithoutUsersInput,
      _i2.TripsUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class TripsUpdateWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.TripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripsUpdateWithoutUsersInput,
      _i2.TripsUncheckedUpdateWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TripsScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.TripsScalarWhereInput,
      Iterable<_i2.TripsScalarWhereInput>>? AND;

  final Iterable<_i2.TripsScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripsScalarWhereInput,
      Iterable<_i2.TripsScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateManyMutationInput({
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsUncheckedUpdateManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedUpdateManyWithoutUsersInput({
    this.tripId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsUpdateManyWithWhereWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateManyWithWhereWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.TripsScalarWhereInput where;

  final _i1.PrismaUnion<_i2.TripsUpdateManyMutationInput,
      _i2.TripsUncheckedUpdateManyWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TripsUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TripsCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripsCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripsUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripsUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripsCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripsCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TripsUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripsUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i2.TripsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TripsUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripsUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.TripsUpdateManyWithWhereWithoutUsersInput,
      Iterable<_i2.TripsUpdateManyWithWhereWithoutUsersInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TripsScalarWhereInput,
      Iterable<_i2.TripsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateWithoutPlacesInput({
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.trips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  final _i2.TripsUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'trips': trips,
      };
}

class TripsUncheckedUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TripsCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripsCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripsUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripsUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripsCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripsCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TripsUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripsUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i2.TripsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TripsWhereUniqueInput,
      Iterable<_i2.TripsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TripsUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripsUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.TripsUpdateManyWithWhereWithoutUsersInput,
      Iterable<_i2.TripsUpdateManyWithWhereWithoutUsersInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TripsScalarWhereInput,
      Iterable<_i2.TripsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUncheckedUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateWithoutPlacesInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.trips,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  final _i2.TripsUncheckedUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'trips': trips,
      };
}

class UsersUpsertWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpsertWithoutPlacesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutPlacesInput,
      _i2.UsersUncheckedUpdateWithoutPlacesInput> update;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutPlacesInput,
      _i2.UsersUncheckedCreateWithoutPlacesInput> create;

  final _i2.UsersWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsersUpdateToOneWithWhereWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateToOneWithWhereWithoutPlacesInput({
    this.where,
    required this.data,
  });

  final _i2.UsersWhereInput? where;

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutPlacesInput,
      _i2.UsersUncheckedUpdateWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersUpdateOneRequiredWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateOneRequiredWithoutPlacesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutPlacesInput,
      _i2.UsersUncheckedCreateWithoutPlacesInput>? create;

  final _i2.UsersCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.UsersUpsertWithoutPlacesInput? upsert;

  final _i2.UsersWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsersUpdateToOneWithWhereWithoutPlacesInput,
      _i1.PrismaUnion<_i2.UsersUpdateWithoutPlacesInput,
          _i2.UsersUncheckedUpdateWithoutPlacesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PlacesUpdateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateWithoutPlaceTagsInput({
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.trips,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  final _i2.TripsUpdateOneRequiredWithoutPlacesNestedInput? trips;

  final _i2.UsersUpdateOneRequiredWithoutPlacesNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'trips': trips,
        'users': users,
      };
}

class PlacesUncheckedUpdateWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateWithoutPlaceTagsInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesUpsertWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpsertWithoutPlaceTagsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.PlacesUpdateWithoutPlaceTagsInput,
      _i2.PlacesUncheckedUpdateWithoutPlaceTagsInput> update;

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutPlaceTagsInput,
      _i2.PlacesUncheckedCreateWithoutPlaceTagsInput> create;

  final _i2.PlacesWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class PlacesUpdateToOneWithWhereWithoutPlaceTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateToOneWithWhereWithoutPlaceTagsInput({
    this.where,
    required this.data,
  });

  final _i2.PlacesWhereInput? where;

  final _i1.PrismaUnion<_i2.PlacesUpdateWithoutPlaceTagsInput,
      _i2.PlacesUncheckedUpdateWithoutPlaceTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlacesUpdateOneRequiredWithoutPlaceTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateOneRequiredWithoutPlaceTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PlacesCreateWithoutPlaceTagsInput,
      _i2.PlacesUncheckedCreateWithoutPlaceTagsInput>? create;

  final _i2.PlacesCreateOrConnectWithoutPlaceTagsInput? connectOrCreate;

  final _i2.PlacesUpsertWithoutPlaceTagsInput? upsert;

  final _i2.PlacesWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.PlacesUpdateToOneWithWhereWithoutPlaceTagsInput,
      _i1.PrismaUnion<_i2.PlacesUpdateWithoutPlaceTagsInput,
          _i2.PlacesUncheckedUpdateWithoutPlaceTagsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PlaceTagsUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateInput({
    this.places,
    this.tags,
  });

  final _i2.PlacesUpdateOneRequiredWithoutPlaceTagsNestedInput? places;

  final _i2.TagsUpdateOneRequiredWithoutPlaceTagsNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'tags': tags,
      };
}

class PlaceTagsUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateInput({
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateManyInput({
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsCountAggregateOutputType {
  const PlaceTagsCountAggregateOutputType({
    this.placeId,
    this.tagId,
    this.$all,
  });

  factory PlaceTagsCountAggregateOutputType.fromJson(Map json) =>
      PlaceTagsCountAggregateOutputType(
        placeId: json['place_id'],
        tagId: json['tag_id'],
        $all: json['_all'],
      );

  final int? placeId;

  final int? tagId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        '_all': $all,
      };
}

class PlaceTagsAvgAggregateOutputType {
  const PlaceTagsAvgAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory PlaceTagsAvgAggregateOutputType.fromJson(Map json) =>
      PlaceTagsAvgAggregateOutputType(
        placeId: json['place_id'],
        tagId: json['tag_id'],
      );

  final double? placeId;

  final double? tagId;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsSumAggregateOutputType {
  const PlaceTagsSumAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory PlaceTagsSumAggregateOutputType.fromJson(Map json) =>
      PlaceTagsSumAggregateOutputType(
        placeId: json['place_id'],
        tagId: json['tag_id'],
      );

  final int? placeId;

  final int? tagId;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsMinAggregateOutputType {
  const PlaceTagsMinAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory PlaceTagsMinAggregateOutputType.fromJson(Map json) =>
      PlaceTagsMinAggregateOutputType(
        placeId: json['place_id'],
        tagId: json['tag_id'],
      );

  final int? placeId;

  final int? tagId;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsMaxAggregateOutputType {
  const PlaceTagsMaxAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory PlaceTagsMaxAggregateOutputType.fromJson(Map json) =>
      PlaceTagsMaxAggregateOutputType(
        placeId: json['place_id'],
        tagId: json['tag_id'],
      );

  final int? placeId;

  final int? tagId;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsGroupByOutputType {
  const PlaceTagsGroupByOutputType({
    this.placeId,
    this.tagId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PlaceTagsGroupByOutputType.fromJson(Map json) =>
      PlaceTagsGroupByOutputType(
        placeId: json['place_id'],
        tagId: json['tag_id'],
        $count: json['_count'] is Map
            ? _i2.PlaceTagsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlaceTagsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlaceTagsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlaceTagsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlaceTagsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? placeId;

  final int? tagId;

  final _i2.PlaceTagsCountAggregateOutputType? $count;

  final _i2.PlaceTagsAvgAggregateOutputType? $avg;

  final _i2.PlaceTagsSumAggregateOutputType? $sum;

  final _i2.PlaceTagsMinAggregateOutputType? $min;

  final _i2.PlaceTagsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PlaceTagsCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCountOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsAvgOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsMaxOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsMinOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsSumOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsOrderByWithAggregationInput({
    this.placeId,
    this.tagId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  final _i2.PlaceTagsCountOrderByAggregateInput? $count;

  final _i2.PlaceTagsAvgOrderByAggregateInput? $avg;

  final _i2.PlaceTagsMaxOrderByAggregateInput? $max;

  final _i2.PlaceTagsMinOrderByAggregateInput? $min;

  final _i2.PlaceTagsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PlaceTagsScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereWithAggregatesInput,
      Iterable<_i2.PlaceTagsScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PlaceTagsScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereWithAggregatesInput,
      Iterable<_i2.PlaceTagsScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCountAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
    this.$all,
  });

  final bool? placeId;

  final bool? tagId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        '_all': $all,
      };
}

class PlaceTagsGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsGroupByOutputTypeCountArgs({this.select});

  final _i2.PlaceTagsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceTagsAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsAvgAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsGroupByOutputTypeAvgArgs({this.select});

  final _i2.PlaceTagsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceTagsSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsSumAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsGroupByOutputTypeSumArgs({this.select});

  final _i2.PlaceTagsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceTagsMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsMinAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsGroupByOutputTypeMinArgs({this.select});

  final _i2.PlaceTagsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceTagsMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsMaxAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
      };
}

class PlaceTagsGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsGroupByOutputTypeMaxArgs({this.select});

  final _i2.PlaceTagsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceTagsGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsGroupByOutputTypeSelect({
    this.placeId,
    this.tagId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? placeId;

  final bool? tagId;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePlaceTags {
  const AggregatePlaceTags({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePlaceTags.fromJson(Map json) => AggregatePlaceTags(
        $count: json['_count'] is Map
            ? _i2.PlaceTagsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlaceTagsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlaceTagsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlaceTagsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlaceTagsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PlaceTagsCountAggregateOutputType? $count;

  final _i2.PlaceTagsAvgAggregateOutputType? $avg;

  final _i2.PlaceTagsSumAggregateOutputType? $sum;

  final _i2.PlaceTagsMinAggregateOutputType? $min;

  final _i2.PlaceTagsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePlaceTagsCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceTagsCountArgs({this.select});

  final _i2.PlaceTagsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceTagsAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceTagsAvgArgs({this.select});

  final _i2.PlaceTagsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceTagsSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceTagsSumArgs({this.select});

  final _i2.PlaceTagsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceTagsMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceTagsMinArgs({this.select});

  final _i2.PlaceTagsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceTagsMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceTagsMaxArgs({this.select});

  final _i2.PlaceTagsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceTagsSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceTagsSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceTagsCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceTagsAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceTagsSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceTagsMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceTagsMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PlacesCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateInput({
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    this.placeTags,
    required this.trips,
    required this.users,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  final _i2.PlaceTagsCreateNestedManyWithoutPlacesInput? placeTags;

  final _i2.TripsCreateNestedOneWithoutPlacesInput trips;

  final _i2.UsersCreateNestedOneWithoutPlacesInput users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
        'users': users,
      };
}

class PlacesUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedCreateInput({
    this.placeId,
    required this.tripId,
    required this.userId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    this.placeTags,
  });

  final int? placeId;

  final int tripId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  final _i2.PlaceTagsUncheckedCreateNestedManyWithoutPlacesInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
      };
}

class PlacesCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCreateManyInput({
    this.placeId,
    required this.tripId,
    required this.userId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
  });

  final int? placeId;

  final int tripId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startTime;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class CreateManyplacesAndReturnOutputTypeTripsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplacesAndReturnOutputTypeTripsArgs({
    this.select,
    this.include,
  });

  final _i2.TripsSelect? select;

  final _i2.TripsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyplacesAndReturnOutputTypeUsersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplacesAndReturnOutputTypeUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyplacesAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplacesAndReturnOutputTypeSelect({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.trips,
    this.users,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startTime;

  final bool? endTime;

  final _i1.PrismaUnion<bool, _i2.CreateManyplacesAndReturnOutputTypeTripsArgs>?
      trips;

  final _i1.PrismaUnion<bool, _i2.CreateManyplacesAndReturnOutputTypeUsersArgs>?
      users;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'trips': trips,
        'users': users,
      };
}

class CreateManyplacesAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyplacesAndReturnOutputTypeInclude({
    this.trips,
    this.users,
  });

  final _i1.PrismaUnion<bool, _i2.CreateManyplacesAndReturnOutputTypeTripsArgs>?
      trips;

  final _i1.PrismaUnion<bool, _i2.CreateManyplacesAndReturnOutputTypeUsersArgs>?
      users;

  @override
  Map<String, dynamic> toJson() => {
        'trips': trips,
        'users': users,
      };
}

class PlacesUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUpdateInput({
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.trips,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsUpdateManyWithoutPlacesNestedInput? placeTags;

  final _i2.TripsUpdateOneRequiredWithoutPlacesNestedInput? trips;

  final _i2.UsersUpdateOneRequiredWithoutPlacesNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
        'trips': trips,
        'users': users,
      };
}

class PlacesUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  final _i2.PlaceTagsUncheckedUpdateManyWithoutPlacesNestedInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        'place_tags': placeTags,
      };
}

class PlacesUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesUncheckedUpdateManyInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startTime;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesCountAggregateOutputType {
  const PlacesCountAggregateOutputType({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.$all,
  });

  factory PlacesCountAggregateOutputType.fromJson(Map json) =>
      PlacesCountAggregateOutputType(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startTime: json['start_time'],
        endTime: json['end_time'],
        $all: json['_all'],
      );

  final int? placeId;

  final int? tripId;

  final int? userId;

  final int? title;

  final int? description;

  final int? startTime;

  final int? endTime;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        '_all': $all,
      };
}

class PlacesAvgAggregateOutputType {
  const PlacesAvgAggregateOutputType({
    this.placeId,
    this.tripId,
    this.userId,
  });

  factory PlacesAvgAggregateOutputType.fromJson(Map json) =>
      PlacesAvgAggregateOutputType(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
      );

  final double? placeId;

  final double? tripId;

  final double? userId;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
      };
}

class PlacesSumAggregateOutputType {
  const PlacesSumAggregateOutputType({
    this.placeId,
    this.tripId,
    this.userId,
  });

  factory PlacesSumAggregateOutputType.fromJson(Map json) =>
      PlacesSumAggregateOutputType(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
      );

  final int? placeId;

  final int? tripId;

  final int? userId;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
      };
}

class PlacesMinAggregateOutputType {
  const PlacesMinAggregateOutputType({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  factory PlacesMinAggregateOutputType.fromJson(Map json) =>
      PlacesMinAggregateOutputType(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startTime: switch (json['start_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_time']
        },
        endTime: switch (json['end_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_time']
        },
      );

  final int? placeId;

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startTime;

  final DateTime? endTime;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime?.toIso8601String(),
        'end_time': endTime?.toIso8601String(),
      };
}

class PlacesMaxAggregateOutputType {
  const PlacesMaxAggregateOutputType({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  factory PlacesMaxAggregateOutputType.fromJson(Map json) =>
      PlacesMaxAggregateOutputType(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startTime: switch (json['start_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_time']
        },
        endTime: switch (json['end_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_time']
        },
      );

  final int? placeId;

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startTime;

  final DateTime? endTime;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime?.toIso8601String(),
        'end_time': endTime?.toIso8601String(),
      };
}

class PlacesGroupByOutputType {
  const PlacesGroupByOutputType({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PlacesGroupByOutputType.fromJson(Map json) => PlacesGroupByOutputType(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startTime: switch (json['start_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_time']
        },
        endTime: switch (json['end_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_time']
        },
        $count: json['_count'] is Map
            ? _i2.PlacesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlacesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlacesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlacesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlacesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? placeId;

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startTime;

  final DateTime? endTime;

  final _i2.PlacesCountAggregateOutputType? $count;

  final _i2.PlacesAvgAggregateOutputType? $avg;

  final _i2.PlacesSumAggregateOutputType? $sum;

  final _i2.PlacesMinAggregateOutputType? $min;

  final _i2.PlacesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime?.toIso8601String(),
        'end_time': endTime?.toIso8601String(),
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PlacesCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCountOrderByAggregateInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startTime;

  final _i2.SortOrder? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesAvgOrderByAggregateInput({
    this.placeId,
    this.tripId,
    this.userId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
      };
}

class PlacesMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesMaxOrderByAggregateInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startTime;

  final _i2.SortOrder? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesMinOrderByAggregateInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startTime;

  final _i2.SortOrder? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesSumOrderByAggregateInput({
    this.placeId,
    this.tripId,
    this.userId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
      };
}

class PlacesOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesOrderByWithAggregationInput({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startTime;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? endTime;

  final _i2.PlacesCountOrderByAggregateInput? $count;

  final _i2.PlacesAvgOrderByAggregateInput? $avg;

  final _i2.PlacesMaxOrderByAggregateInput? $max;

  final _i2.PlacesMinOrderByAggregateInput? $min;

  final _i2.PlacesSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class PlacesScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final _i1.PrismaUnion<_i2.PlacesScalarWhereWithAggregatesInput,
      Iterable<_i2.PlacesScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PlacesScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PlacesScalarWhereWithAggregatesInput,
      Iterable<_i2.PlacesScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? startTime;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesCountAggregateOutputTypeSelect({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.$all,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startTime;

  final bool? endTime;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        '_all': $all,
      };
}

class PlacesGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesGroupByOutputTypeCountArgs({this.select});

  final _i2.PlacesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlacesAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesAvgAggregateOutputTypeSelect({
    this.placeId,
    this.tripId,
    this.userId,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
      };
}

class PlacesGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesGroupByOutputTypeAvgArgs({this.select});

  final _i2.PlacesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlacesSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesSumAggregateOutputTypeSelect({
    this.placeId,
    this.tripId,
    this.userId,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
      };
}

class PlacesGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesGroupByOutputTypeSumArgs({this.select});

  final _i2.PlacesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlacesMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesMinAggregateOutputTypeSelect({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startTime;

  final bool? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesGroupByOutputTypeMinArgs({this.select});

  final _i2.PlacesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlacesMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesMaxAggregateOutputTypeSelect({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startTime;

  final bool? endTime;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
      };
}

class PlacesGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesGroupByOutputTypeMaxArgs({this.select});

  final _i2.PlacesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlacesGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlacesGroupByOutputTypeSelect({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? placeId;

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startTime;

  final bool? endTime;

  final _i1.PrismaUnion<bool, _i2.PlacesGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PlacesGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PlacesGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PlacesGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PlacesGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime,
        'end_time': endTime,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePlaces {
  const AggregatePlaces({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePlaces.fromJson(Map json) => AggregatePlaces(
        $count: json['_count'] is Map
            ? _i2.PlacesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlacesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlacesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlacesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlacesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PlacesCountAggregateOutputType? $count;

  final _i2.PlacesAvgAggregateOutputType? $avg;

  final _i2.PlacesSumAggregateOutputType? $sum;

  final _i2.PlacesMinAggregateOutputType? $min;

  final _i2.PlacesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePlacesCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlacesCountArgs({this.select});

  final _i2.PlacesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlacesAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlacesAvgArgs({this.select});

  final _i2.PlacesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlacesSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlacesSumArgs({this.select});

  final _i2.PlacesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlacesMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlacesMinArgs({this.select});

  final _i2.PlacesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlacesMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlacesMaxArgs({this.select});

  final _i2.PlacesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlacesSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlacesSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePlacesCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePlacesAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePlacesSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePlacesMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePlacesMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum TagsScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  tagId<int>('tag_id', 'tags'),
  tagName<String>('tag_name', 'tags'),
  description<String>('description', 'tags');

  const TagsScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PlaceTagsCreateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateWithoutTagsInput({required this.places});

  final _i2.PlacesCreateNestedOneWithoutPlaceTagsInput places;

  @override
  Map<String, dynamic> toJson() => {'places': places};
}

class PlaceTagsUncheckedCreateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedCreateWithoutTagsInput({required this.placeId});

  final int placeId;

  @override
  Map<String, dynamic> toJson() => {'place_id': placeId};
}

class PlaceTagsCreateOrConnectWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateOrConnectWithoutTagsInput({
    required this.where,
    required this.create,
  });

  final _i2.PlaceTagsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateWithoutTagsInput,
      _i2.PlaceTagsUncheckedCreateWithoutTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlaceTagsCreateManyTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateManyTagsInput({required this.placeId});

  final int placeId;

  @override
  Map<String, dynamic> toJson() => {'place_id': placeId};
}

class PlaceTagsCreateManyTagsInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateManyTagsInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PlaceTagsCreateManyTagsInput,
      Iterable<_i2.PlaceTagsCreateManyTagsInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PlaceTagsCreateNestedManyWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlaceTagsCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceTagsCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceTagsUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceTagsCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i2.PlaceTagsCreateManyTagsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TagsCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCreateInput({
    required this.tagName,
    this.description,
    this.placeTags,
  });

  final String tagName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.PlaceTagsCreateNestedManyWithoutTagsInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags,
      };
}

class PlaceTagsUncheckedCreateNestedManyWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlaceTagsCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceTagsCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceTagsUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceTagsCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i2.PlaceTagsCreateManyTagsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TagsUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUncheckedCreateInput({
    this.tagId,
    required this.tagName,
    this.description,
    this.placeTags,
  });

  final int? tagId;

  final String tagName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.PlaceTagsUncheckedCreateNestedManyWithoutTagsInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags,
      };
}

class TagsCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCreateManyInput({
    this.tagId,
    required this.tagName,
    this.description,
  });

  final int? tagId;

  final String tagName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class CreateManytagsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytagsAndReturnOutputTypeSelect({
    this.tagId,
    this.tagName,
    this.description,
  });

  final bool? tagId;

  final bool? tagName;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class PlaceTagsUpdateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateWithoutTagsInput({this.places});

  final _i2.PlacesUpdateOneRequiredWithoutPlaceTagsNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {'places': places};
}

class PlaceTagsUncheckedUpdateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateWithoutTagsInput({this.placeId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  @override
  Map<String, dynamic> toJson() => {'place_id': placeId};
}

class PlaceTagsUpsertWithWhereUniqueWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpsertWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlaceTagsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithoutTagsInput,
      _i2.PlaceTagsUncheckedUpdateWithoutTagsInput> update;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateWithoutTagsInput,
      _i2.PlaceTagsUncheckedCreateWithoutTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlaceTagsUpdateWithWhereUniqueWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceTagsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithoutTagsInput,
      _i2.PlaceTagsUncheckedUpdateWithoutTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceTagsUncheckedUpdateManyWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateManyWithoutTagsInput({this.placeId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  @override
  Map<String, dynamic> toJson() => {'place_id': placeId};
}

class PlaceTagsUpdateManyWithWhereWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateManyWithWhereWithoutTagsInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceTagsScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateManyMutationInput,
      _i2.PlaceTagsUncheckedUpdateManyWithoutTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceTagsUpdateManyWithoutTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUpdateManyWithoutTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlaceTagsCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceTagsCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceTagsUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceTagsCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceTagsUpsertWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceTagsUpsertWithWhereUniqueWithoutTagsInput>>? upsert;

  final _i2.PlaceTagsCreateManyTagsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceTagsUpdateWithWhereUniqueWithoutTagsInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateManyWithWhereWithoutTagsInput,
      Iterable<_i2.PlaceTagsUpdateManyWithWhereWithoutTagsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereInput,
      Iterable<_i2.PlaceTagsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TagsUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUpdateInput({
    this.tagName,
    this.description,
    this.placeTags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.PlaceTagsUpdateManyWithoutTagsNestedInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags,
      };
}

class PlaceTagsUncheckedUpdateManyWithoutTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsUncheckedUpdateManyWithoutTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlaceTagsCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceTagsCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceTagsUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceTagsUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceTagsCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceTagsCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceTagsUpsertWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceTagsUpsertWithWhereUniqueWithoutTagsInput>>? upsert;

  final _i2.PlaceTagsCreateManyTagsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceTagsWhereUniqueInput,
      Iterable<_i2.PlaceTagsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceTagsUpdateWithWhereUniqueWithoutTagsInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceTagsUpdateManyWithWhereWithoutTagsInput,
      Iterable<_i2.PlaceTagsUpdateManyWithWhereWithoutTagsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceTagsScalarWhereInput,
      Iterable<_i2.PlaceTagsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TagsUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUncheckedUpdateInput({
    this.tagId,
    this.tagName,
    this.description,
    this.placeTags,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.PlaceTagsUncheckedUpdateManyWithoutTagsNestedInput? placeTags;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags,
      };
}

class TagsUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUpdateManyMutationInput({
    this.tagName,
    this.description,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_name': tagName,
        'description': description,
      };
}

class TagsUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsUncheckedUpdateManyInput({
    this.tagId,
    this.tagName,
    this.description,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsCountAggregateOutputType {
  const TagsCountAggregateOutputType({
    this.tagId,
    this.tagName,
    this.description,
    this.$all,
  });

  factory TagsCountAggregateOutputType.fromJson(Map json) =>
      TagsCountAggregateOutputType(
        tagId: json['tag_id'],
        tagName: json['tag_name'],
        description: json['description'],
        $all: json['_all'],
      );

  final int? tagId;

  final int? tagName;

  final int? description;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        '_all': $all,
      };
}

class TagsAvgAggregateOutputType {
  const TagsAvgAggregateOutputType({this.tagId});

  factory TagsAvgAggregateOutputType.fromJson(Map json) =>
      TagsAvgAggregateOutputType(tagId: json['tag_id']);

  final double? tagId;

  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class TagsSumAggregateOutputType {
  const TagsSumAggregateOutputType({this.tagId});

  factory TagsSumAggregateOutputType.fromJson(Map json) =>
      TagsSumAggregateOutputType(tagId: json['tag_id']);

  final int? tagId;

  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class TagsMinAggregateOutputType {
  const TagsMinAggregateOutputType({
    this.tagId,
    this.tagName,
    this.description,
  });

  factory TagsMinAggregateOutputType.fromJson(Map json) =>
      TagsMinAggregateOutputType(
        tagId: json['tag_id'],
        tagName: json['tag_name'],
        description: json['description'],
      );

  final int? tagId;

  final String? tagName;

  final String? description;

  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsMaxAggregateOutputType {
  const TagsMaxAggregateOutputType({
    this.tagId,
    this.tagName,
    this.description,
  });

  factory TagsMaxAggregateOutputType.fromJson(Map json) =>
      TagsMaxAggregateOutputType(
        tagId: json['tag_id'],
        tagName: json['tag_name'],
        description: json['description'],
      );

  final int? tagId;

  final String? tagName;

  final String? description;

  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsGroupByOutputType {
  const TagsGroupByOutputType({
    this.tagId,
    this.tagName,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory TagsGroupByOutputType.fromJson(Map json) => TagsGroupByOutputType(
        tagId: json['tag_id'],
        tagName: json['tag_name'],
        description: json['description'],
        $count: json['_count'] is Map
            ? _i2.TagsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TagsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TagsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TagsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? tagId;

  final String? tagName;

  final String? description;

  final _i2.TagsCountAggregateOutputType? $count;

  final _i2.TagsAvgAggregateOutputType? $avg;

  final _i2.TagsSumAggregateOutputType? $sum;

  final _i2.TagsMinAggregateOutputType? $min;

  final _i2.TagsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TagsCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCountOrderByAggregateInput({
    this.tagId,
    this.tagName,
    this.description,
  });

  final _i2.SortOrder? tagId;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsAvgOrderByAggregateInput({this.tagId});

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class TagsMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsMaxOrderByAggregateInput({
    this.tagId,
    this.tagName,
    this.description,
  });

  final _i2.SortOrder? tagId;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsMinOrderByAggregateInput({
    this.tagId,
    this.tagName,
    this.description,
  });

  final _i2.SortOrder? tagId;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsSumOrderByAggregateInput({this.tagId});

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class TagsOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOrderByWithAggregationInput({
    this.tagId,
    this.tagName,
    this.description,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? tagId;

  final _i2.SortOrder? tagName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.TagsCountOrderByAggregateInput? $count;

  final _i2.TagsAvgOrderByAggregateInput? $avg;

  final _i2.TagsMaxOrderByAggregateInput? $max;

  final _i2.TagsMinOrderByAggregateInput? $min;

  final _i2.TagsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class TagsScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.tagId,
    this.tagName,
    this.description,
  });

  final _i1.PrismaUnion<_i2.TagsScalarWhereWithAggregatesInput,
      Iterable<_i2.TagsScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TagsScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TagsScalarWhereWithAggregatesInput,
      Iterable<_i2.TagsScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? tagId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? tagName;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsCountAggregateOutputTypeSelect({
    this.tagId,
    this.tagName,
    this.description,
    this.$all,
  });

  final bool? tagId;

  final bool? tagName;

  final bool? description;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        '_all': $all,
      };
}

class TagsGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsGroupByOutputTypeCountArgs({this.select});

  final _i2.TagsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsAvgAggregateOutputTypeSelect({this.tagId});

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class TagsGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsGroupByOutputTypeAvgArgs({this.select});

  final _i2.TagsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsSumAggregateOutputTypeSelect({this.tagId});

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {'tag_id': tagId};
}

class TagsGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsGroupByOutputTypeSumArgs({this.select});

  final _i2.TagsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsMinAggregateOutputTypeSelect({
    this.tagId,
    this.tagName,
    this.description,
  });

  final bool? tagId;

  final bool? tagName;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsGroupByOutputTypeMinArgs({this.select});

  final _i2.TagsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsMaxAggregateOutputTypeSelect({
    this.tagId,
    this.tagName,
    this.description,
  });

  final bool? tagId;

  final bool? tagName;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class TagsGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsGroupByOutputTypeMaxArgs({this.select});

  final _i2.TagsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsGroupByOutputTypeSelect({
    this.tagId,
    this.tagName,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? tagId;

  final bool? tagName;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.TagsGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TagsGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.TagsGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.TagsGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TagsGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTags {
  const AggregateTags({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateTags.fromJson(Map json) => AggregateTags(
        $count: json['_count'] is Map
            ? _i2.TagsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TagsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TagsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TagsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TagsCountAggregateOutputType? $count;

  final _i2.TagsAvgAggregateOutputType? $avg;

  final _i2.TagsSumAggregateOutputType? $sum;

  final _i2.TagsMinAggregateOutputType? $min;

  final _i2.TagsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTagsCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsCountArgs({this.select});

  final _i2.TagsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsAvgArgs({this.select});

  final _i2.TagsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsSumArgs({this.select});

  final _i2.TagsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsMinArgs({this.select});

  final _i2.TagsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsMaxArgs({this.select});

  final _i2.TagsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTagsCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class TripsCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateInput({
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    required this.users,
  });

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final _i2.PlacesCreateNestedManyWithoutTripsInput? places;

  final _i2.UsersCreateNestedOneWithoutTripsInput users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
        'users': users,
      };
}

class TripsUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedCreateInput({
    this.tripId,
    required this.userId,
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final int? tripId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final _i2.PlacesUncheckedCreateNestedManyWithoutTripsInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
      };
}

class TripsCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCreateManyInput({
    this.tripId,
    required this.userId,
    required this.title,
    this.description,
    required this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final int? tripId;

  final int userId;

  final String title;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? createdAt;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class CreateManytripsAndReturnOutputTypeUsersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytripsAndReturnOutputTypeUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManytripsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytripsAndReturnOutputTypeSelect({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CreateManytripsAndReturnOutputTypeUsersArgs>?
      users;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'users': users,
      };
}

class CreateManytripsAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytripsAndReturnOutputTypeInclude({this.users});

  final _i1.PrismaUnion<bool, _i2.CreateManytripsAndReturnOutputTypeUsersArgs>?
      users;

  @override
  Map<String, dynamic> toJson() => {'users': users};
}

class TripsUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUpdateInput({
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i2.PlacesUpdateManyWithoutTripsNestedInput? places;

  final _i2.UsersUpdateOneRequiredWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
        'users': users,
      };
}

class TripsUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedUpdateInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i2.PlacesUncheckedUpdateManyWithoutTripsNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'places': places,
      };
}

class TripsUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsUncheckedUpdateManyInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsCountAggregateOutputType {
  const TripsCountAggregateOutputType({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory TripsCountAggregateOutputType.fromJson(Map json) =>
      TripsCountAggregateOutputType(
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startDate: json['start_date'],
        endDate: json['end_date'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        $all: json['_all'],
      );

  final int? tripId;

  final int? userId;

  final int? title;

  final int? description;

  final int? startDate;

  final int? endDate;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        '_all': $all,
      };
}

class TripsAvgAggregateOutputType {
  const TripsAvgAggregateOutputType({
    this.tripId,
    this.userId,
  });

  factory TripsAvgAggregateOutputType.fromJson(Map json) =>
      TripsAvgAggregateOutputType(
        tripId: json['trip_id'],
        userId: json['user_id'],
      );

  final double? tripId;

  final double? userId;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
      };
}

class TripsSumAggregateOutputType {
  const TripsSumAggregateOutputType({
    this.tripId,
    this.userId,
  });

  factory TripsSumAggregateOutputType.fromJson(Map json) =>
      TripsSumAggregateOutputType(
        tripId: json['trip_id'],
        userId: json['user_id'],
      );

  final int? tripId;

  final int? userId;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
      };
}

class TripsMinAggregateOutputType {
  const TripsMinAggregateOutputType({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  factory TripsMinAggregateOutputType.fromJson(Map json) =>
      TripsMinAggregateOutputType(
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startDate: switch (json['start_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_date']
        },
        endDate: switch (json['end_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_date']
        },
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
      );

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate?.toIso8601String(),
        'end_date': endDate?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}

class TripsMaxAggregateOutputType {
  const TripsMaxAggregateOutputType({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  factory TripsMaxAggregateOutputType.fromJson(Map json) =>
      TripsMaxAggregateOutputType(
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startDate: switch (json['start_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_date']
        },
        endDate: switch (json['end_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_date']
        },
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
      );

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate?.toIso8601String(),
        'end_date': endDate?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}

class TripsGroupByOutputType {
  const TripsGroupByOutputType({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory TripsGroupByOutputType.fromJson(Map json) => TripsGroupByOutputType(
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startDate: switch (json['start_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_date']
        },
        endDate: switch (json['end_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_date']
        },
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
        $count: json['_count'] is Map
            ? _i2.TripsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TripsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TripsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TripsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TripsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripsCountAggregateOutputType? $count;

  final _i2.TripsAvgAggregateOutputType? $avg;

  final _i2.TripsSumAggregateOutputType? $sum;

  final _i2.TripsMinAggregateOutputType? $min;

  final _i2.TripsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate?.toIso8601String(),
        'end_date': endDate?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TripsCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCountOrderByAggregateInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsAvgOrderByAggregateInput({
    this.tripId,
    this.userId,
  });

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
      };
}

class TripsMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsMaxOrderByAggregateInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsMinOrderByAggregateInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsSumOrderByAggregateInput({
    this.tripId,
    this.userId,
  });

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
      };
}

class TripsOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsOrderByWithAggregationInput({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? title;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? endDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? createdAt;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? updatedAt;

  final _i2.TripsCountOrderByAggregateInput? $count;

  final _i2.TripsAvgOrderByAggregateInput? $avg;

  final _i2.TripsMaxOrderByAggregateInput? $max;

  final _i2.TripsMinOrderByAggregateInput? $min;

  final _i2.TripsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class TripsScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.TripsScalarWhereWithAggregatesInput,
      Iterable<_i2.TripsScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TripsScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TripsScalarWhereWithAggregatesInput,
      Iterable<_i2.TripsScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsCountAggregateOutputTypeSelect({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        '_all': $all,
      };
}

class TripsGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsGroupByOutputTypeCountArgs({this.select});

  final _i2.TripsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripsAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsAvgAggregateOutputTypeSelect({
    this.tripId,
    this.userId,
  });

  final bool? tripId;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
      };
}

class TripsGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsGroupByOutputTypeAvgArgs({this.select});

  final _i2.TripsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripsSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsSumAggregateOutputTypeSelect({
    this.tripId,
    this.userId,
  });

  final bool? tripId;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
      };
}

class TripsGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsGroupByOutputTypeSumArgs({this.select});

  final _i2.TripsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripsMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsMinAggregateOutputTypeSelect({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsGroupByOutputTypeMinArgs({this.select});

  final _i2.TripsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripsMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsMaxAggregateOutputTypeSelect({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class TripsGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsGroupByOutputTypeMaxArgs({this.select});

  final _i2.TripsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripsGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripsGroupByOutputTypeSelect({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? tripId;

  final bool? userId;

  final bool? title;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.TripsGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TripsGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.TripsGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.TripsGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TripsGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate,
        'end_date': endDate,
        'created_at': createdAt,
        'updated_at': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTrips {
  const AggregateTrips({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateTrips.fromJson(Map json) => AggregateTrips(
        $count: json['_count'] is Map
            ? _i2.TripsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TripsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TripsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TripsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TripsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TripsCountAggregateOutputType? $count;

  final _i2.TripsAvgAggregateOutputType? $avg;

  final _i2.TripsSumAggregateOutputType? $sum;

  final _i2.TripsMinAggregateOutputType? $min;

  final _i2.TripsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTripsCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripsCountArgs({this.select});

  final _i2.TripsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripsAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripsAvgArgs({this.select});

  final _i2.TripsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripsSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripsSumArgs({this.select});

  final _i2.TripsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripsMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripsMinArgs({this.select});

  final _i2.TripsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripsMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripsMaxArgs({this.select});

  final _i2.TripsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripsSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripsSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTripsCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTripsAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateTripsSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateTripsMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTripsMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum UsersScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  userId<int>('user_id', 'users'),
  username<String>('username', 'users'),
  email<String>('email', 'users'),
  firstName<String>('first_name', 'users'),
  lastName<String>('last_name', 'users');

  const UsersScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UsersCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateInput({
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
  });

  final String username;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? firstName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? lastName;

  final _i2.PlacesCreateNestedManyWithoutUsersInput? places;

  final _i2.TripsCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
      };
}

class UsersUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedCreateInput({
    this.userId,
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
  });

  final int? userId;

  final String username;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? firstName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? lastName;

  final _i2.PlacesUncheckedCreateNestedManyWithoutUsersInput? places;

  final _i2.TripsUncheckedCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
      };
}

class UsersCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateManyInput({
    this.userId,
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
  });

  final int? userId;

  final String username;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? firstName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class CreateManyusersAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyusersAndReturnOutputTypeSelect({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final bool? userId;

  final bool? username;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateInput({
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  final _i2.PlacesUpdateManyWithoutUsersNestedInput? places;

  final _i2.TripsUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
      };
}

class UsersUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  final _i2.PlacesUncheckedUpdateManyWithoutUsersNestedInput? places;

  final _i2.TripsUncheckedUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places,
        'trips': trips,
      };
}

class UsersUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateManyMutationInput({
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateManyInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersCountAggregateOutputType {
  const UsersCountAggregateOutputType({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.$all,
  });

  factory UsersCountAggregateOutputType.fromJson(Map json) =>
      UsersCountAggregateOutputType(
        userId: json['user_id'],
        username: json['username'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        $all: json['_all'],
      );

  final int? userId;

  final int? username;

  final int? email;

  final int? firstName;

  final int? lastName;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        '_all': $all,
      };
}

class UsersAvgAggregateOutputType {
  const UsersAvgAggregateOutputType({this.userId});

  factory UsersAvgAggregateOutputType.fromJson(Map json) =>
      UsersAvgAggregateOutputType(userId: json['user_id']);

  final double? userId;

  Map<String, dynamic> toJson() => {'user_id': userId};
}

class UsersSumAggregateOutputType {
  const UsersSumAggregateOutputType({this.userId});

  factory UsersSumAggregateOutputType.fromJson(Map json) =>
      UsersSumAggregateOutputType(userId: json['user_id']);

  final int? userId;

  Map<String, dynamic> toJson() => {'user_id': userId};
}

class UsersMinAggregateOutputType {
  const UsersMinAggregateOutputType({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  factory UsersMinAggregateOutputType.fromJson(Map json) =>
      UsersMinAggregateOutputType(
        userId: json['user_id'],
        username: json['username'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
      );

  final int? userId;

  final String? username;

  final String? email;

  final String? firstName;

  final String? lastName;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersMaxAggregateOutputType {
  const UsersMaxAggregateOutputType({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  factory UsersMaxAggregateOutputType.fromJson(Map json) =>
      UsersMaxAggregateOutputType(
        userId: json['user_id'],
        username: json['username'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
      );

  final int? userId;

  final String? username;

  final String? email;

  final String? firstName;

  final String? lastName;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersGroupByOutputType {
  const UsersGroupByOutputType({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UsersGroupByOutputType.fromJson(Map json) => UsersGroupByOutputType(
        userId: json['user_id'],
        username: json['username'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        $count: json['_count'] is Map
            ? _i2.UsersCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UsersAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UsersSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? userId;

  final String? username;

  final String? email;

  final String? firstName;

  final String? lastName;

  final _i2.UsersCountAggregateOutputType? $count;

  final _i2.UsersAvgAggregateOutputType? $avg;

  final _i2.UsersSumAggregateOutputType? $sum;

  final _i2.UsersMinAggregateOutputType? $min;

  final _i2.UsersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UsersCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountOrderByAggregateInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? username;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersAvgOrderByAggregateInput({this.userId});

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {'user_id': userId};
}

class UsersMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMaxOrderByAggregateInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? username;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMinOrderByAggregateInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? username;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersSumOrderByAggregateInput({this.userId});

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {'user_id': userId};
}

class UsersOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOrderByWithAggregationInput({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? username;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? firstName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? lastName;

  final _i2.UsersCountOrderByAggregateInput? $count;

  final _i2.UsersAvgOrderByAggregateInput? $avg;

  final _i2.UsersMaxOrderByAggregateInput? $max;

  final _i2.UsersMinOrderByAggregateInput? $min;

  final _i2.UsersSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class UsersScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final _i1.PrismaUnion<_i2.UsersScalarWhereWithAggregatesInput,
      Iterable<_i2.UsersScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UsersScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UsersScalarWhereWithAggregatesInput,
      Iterable<_i2.UsersScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? userId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? firstName;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountAggregateOutputTypeSelect({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.$all,
  });

  final bool? userId;

  final bool? username;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        '_all': $all,
      };
}

class UsersGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeCountArgs({this.select});

  final _i2.UsersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersAvgAggregateOutputTypeSelect({this.userId});

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {'user_id': userId};
}

class UsersGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeAvgArgs({this.select});

  final _i2.UsersAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersSumAggregateOutputTypeSelect({this.userId});

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {'user_id': userId};
}

class UsersGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeSumArgs({this.select});

  final _i2.UsersSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMinAggregateOutputTypeSelect({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final bool? userId;

  final bool? username;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeMinArgs({this.select});

  final _i2.UsersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMaxAggregateOutputTypeSelect({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  final bool? userId;

  final bool? username;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class UsersGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeMaxArgs({this.select});

  final _i2.UsersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeSelect({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? userId;

  final bool? username;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUsers {
  const AggregateUsers({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUsers.fromJson(Map json) => AggregateUsers(
        $count: json['_count'] is Map
            ? _i2.UsersCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UsersAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UsersSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UsersCountAggregateOutputType? $count;

  final _i2.UsersAvgAggregateOutputType? $avg;

  final _i2.UsersSumAggregateOutputType? $sum;

  final _i2.UsersMinAggregateOutputType? $min;

  final _i2.UsersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUsersCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersCountArgs({this.select});

  final _i2.UsersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersAvgArgs({this.select});

  final _i2.UsersAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersSumArgs({this.select});

  final _i2.UsersSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersMinArgs({this.select});

  final _i2.UsersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersMaxArgs({this.select});

  final _i2.UsersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUsersCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
