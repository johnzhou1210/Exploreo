// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class TagCountOutputType {
  const TagCountOutputType({this.places});

  factory TagCountOutputType.fromJson(Map json) =>
      TagCountOutputType(places: json['places']);

  final int? places;

  Map<String, dynamic> toJson() => {'places': places};
}

class PlaceCountOutputType {
  const PlaceCountOutputType({this.tags});

  factory PlaceCountOutputType.fromJson(Map json) =>
      PlaceCountOutputType(tags: json['tags']);

  final int? tags;

  Map<String, dynamic> toJson() => {'tags': tags};
}

class TripCountOutputType {
  const TripCountOutputType({
    this.places,
    this.users,
  });

  factory TripCountOutputType.fromJson(Map json) => TripCountOutputType(
        places: json['places'],
        users: json['users'],
      );

  final int? places;

  final int? users;

  Map<String, dynamic> toJson() => {
        'places': places,
        'users': users,
      };
}

class UserCountOutputType {
  const UserCountOutputType({this.trips});

  factory UserCountOutputType.fromJson(Map json) =>
      UserCountOutputType(trips: json['trips']);

  final int? trips;

  Map<String, dynamic> toJson() => {'trips': trips};
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

class TripRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.TripWhereInput? $is;

  final _i2.TripWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class PlaceRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.PlaceWhereInput? $is;

  final _i2.PlaceWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class TagWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<_i2.TagWhereInput, Iterable<_i2.TagWhereInput>>? AND;

  final Iterable<_i2.TagWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagWhereInput, Iterable<_i2.TagWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tagName;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.TagsOnPlacesListRelationFilter? places;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TagRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.TagWhereInput? $is;

  final _i2.TagWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class TagsOnPlacesWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
    this.place,
    this.tag,
  });

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereInput,
      Iterable<_i2.TagsOnPlacesWhereInput>>? AND;

  final Iterable<_i2.TagsOnPlacesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereInput,
      Iterable<_i2.TagsOnPlacesWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tagId;

  final _i1.PrismaUnion<_i2.PlaceRelationFilter, _i2.PlaceWhereInput>? place;

  final _i1.PrismaUnion<_i2.TagRelationFilter, _i2.TagWhereInput>? tag;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'placeId': placeId,
        'tagId': tagId,
        'place': place,
        'tag': tag,
      };
}

class TagsOnPlacesListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.TagsOnPlacesWhereInput? every;

  final _i2.TagsOnPlacesWhereInput? some;

  final _i2.TagsOnPlacesWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class PlaceWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
  });

  final _i1.PrismaUnion<_i2.PlaceWhereInput, Iterable<_i2.PlaceWhereInput>>?
      AND;

  final Iterable<_i2.PlaceWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceWhereInput, Iterable<_i2.PlaceWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.TripRelationFilter, _i2.TripWhereInput>? trip;

  final _i2.TagsOnPlacesListRelationFilter? tags;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
      };
}

class PlaceListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PlaceWhereInput? every;

  final _i2.PlaceWhereInput? some;

  final _i2.PlaceWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UserListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.UserWhereInput? every;

  final _i2.UserWhereInput? some;

  final _i2.UserWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class TripWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? AND;

  final Iterable<_i2.TripWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.PlaceListRelationFilter? places;

  final _i2.UserListRelationFilter? users;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
      };
}

class TripListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.TripWhereInput? every;

  final _i2.TripWhereInput? some;

  final _i2.TripWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.TripListRelationFilter? trips;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
  });

  final int? id;

  final String? email;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.TripListRelationFilter? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
      };
}

class PlaceTripArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTripArgs({
    this.select,
    this.include,
  });

  final _i2.TripSelect? select;

  final _i2.TripInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class TagsOnPlacesPlaceArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesPlaceArgs({
    this.select,
    this.include,
  });

  final _i2.PlaceSelect? select;

  final _i2.PlaceInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
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

class PlaceOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class UserOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class TripOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripOrderByWithRelationInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PlaceOrderByRelationAggregateInput? places;

  final _i2.UserOrderByRelationAggregateInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
      };
}

class TagsOnPlacesOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PlaceOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceOrderByWithRelationInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? note;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.TripOrderByWithRelationInput? trip;

  final _i2.TagsOnPlacesOrderByRelationAggregateInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
      };
}

class TagOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagOrderByWithRelationInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.TagsOnPlacesOrderByRelationAggregateInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TagsOnPlacesOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesOrderByWithRelationInput({
    this.placeId,
    this.tagId,
    this.place,
    this.tag,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  final _i2.PlaceOrderByWithRelationInput? place;

  final _i2.TagOrderByWithRelationInput? tag;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        'place': place,
        'tag': tag,
      };
}

class TagsOnPlacesPlaceIdTagIdCompoundUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesPlaceIdTagIdCompoundUniqueInput({
    required this.placeId,
    required this.tagId,
  });

  final int placeId;

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesWhereUniqueInput({
    this.placeIdTagId,
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
    this.place,
    this.tag,
  });

  final _i2.TagsOnPlacesPlaceIdTagIdCompoundUniqueInput? placeIdTagId;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereInput,
      Iterable<_i2.TagsOnPlacesWhereInput>>? AND;

  final Iterable<_i2.TagsOnPlacesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereInput,
      Iterable<_i2.TagsOnPlacesWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tagId;

  final _i1.PrismaUnion<_i2.PlaceRelationFilter, _i2.PlaceWhereInput>? place;

  final _i1.PrismaUnion<_i2.TagRelationFilter, _i2.TagWhereInput>? tag;

  @override
  Map<String, dynamic> toJson() => {
        'placeId_tagId': placeIdTagId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'placeId': placeId,
        'tagId': tagId,
        'place': place,
        'tag': tag,
      };
}

enum TagsOnPlacesScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  placeId<int>('placeId', 'TagsOnPlaces'),
  tagId<int>('tagId', 'TagsOnPlaces');

  const TagsOnPlacesScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TagPlacesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagPlacesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.TagsOnPlacesWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.TagsOnPlacesOrderByWithRelationInput>,
      _i2.TagsOnPlacesOrderByWithRelationInput>? orderBy;

  final _i2.TagsOnPlacesWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1
      .PrismaUnion<_i2.TagsOnPlacesScalar, Iterable<_i2.TagsOnPlacesScalar>>?
      distinct;

  final _i2.TagsOnPlacesSelect? select;

  final _i2.TagsOnPlacesInclude? include;

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

class TagCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCountOutputTypeSelect({this.places});

  final bool? places;

  @override
  Map<String, dynamic> toJson() => {'places': places};
}

class TagCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCountArgs({this.select});

  final _i2.TagCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagInclude({
    this.places,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.TagPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TagCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        '_count': $count,
      };
}

class TagsOnPlacesTagArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesTagArgs({
    this.select,
    this.include,
  });

  final _i2.TagSelect? select;

  final _i2.TagInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class TagsOnPlacesInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesInclude({
    this.place,
    this.tag,
  });

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesPlaceArgs>? place;

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesTagArgs>? tag;

  @override
  Map<String, dynamic> toJson() => {
        'place': place,
        'tag': tag,
      };
}

class TagSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagSelect({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.$count,
  });

  final bool? id;

  final bool? tagName;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.TagPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TagCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        '_count': $count,
      };
}

class TagsOnPlacesSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesSelect({
    this.placeId,
    this.tagId,
    this.place,
    this.tag,
  });

  final bool? placeId;

  final bool? tagId;

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesPlaceArgs>? place;

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesTagArgs>? tag;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        'place': place,
        'tag': tag,
      };
}

class PlaceTagsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceTagsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.TagsOnPlacesWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.TagsOnPlacesOrderByWithRelationInput>,
      _i2.TagsOnPlacesOrderByWithRelationInput>? orderBy;

  final _i2.TagsOnPlacesWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1
      .PrismaUnion<_i2.TagsOnPlacesScalar, Iterable<_i2.TagsOnPlacesScalar>>?
      distinct;

  final _i2.TagsOnPlacesSelect? select;

  final _i2.TagsOnPlacesInclude? include;

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

class PlaceCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCountOutputTypeSelect({this.tags});

  final bool? tags;

  @override
  Map<String, dynamic> toJson() => {'tags': tags};
}

class PlaceCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCountArgs({this.select});

  final _i2.PlaceCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceInclude({
    this.trip,
    this.tags,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.PlaceTripArgs>? trip;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsArgs>? tags;

  final _i1.PrismaUnion<bool, _i2.PlaceCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'trip': trip,
        'tags': tags,
        '_count': $count,
      };
}

class PlaceWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.PlaceWhereInput, Iterable<_i2.PlaceWhereInput>>?
      AND;

  final Iterable<_i2.PlaceWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceWhereInput, Iterable<_i2.PlaceWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.TripRelationFilter, _i2.TripWhereInput>? trip;

  final _i2.TagsOnPlacesListRelationFilter? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
      };
}

enum PlaceScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Place'),
  placeName<String>('placeName', 'Place'),
  description<String>('description', 'Place'),
  note<String>('note', 'Place'),
  tripId<int>('tripId', 'Place'),
  createdAt<DateTime>('createdAt', 'Place'),
  updatedAt<DateTime>('updatedAt', 'Place');

  const PlaceScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TripPlacesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripPlacesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PlaceWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PlaceOrderByWithRelationInput>,
      _i2.PlaceOrderByWithRelationInput>? orderBy;

  final _i2.PlaceWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PlaceScalar, Iterable<_i2.PlaceScalar>>? distinct;

  final _i2.PlaceSelect? select;

  final _i2.PlaceInclude? include;

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

class TripWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? AND;

  final Iterable<_i2.TripWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.PlaceListRelationFilter? places;

  final _i2.UserListRelationFilter? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
      };
}

enum TripScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Trip'),
  tripName<String>('tripName', 'Trip'),
  description<String>('description', 'Trip'),
  startDate<DateTime>('startDate', 'Trip'),
  endDate<DateTime>('endDate', 'Trip'),
  createdAt<DateTime>('createdAt', 'Trip'),
  updatedAt<DateTime>('updatedAt', 'Trip');

  const TripScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserTripsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserTripsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.TripWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.TripOrderByWithRelationInput>,
      _i2.TripOrderByWithRelationInput>? orderBy;

  final _i2.TripWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.TripScalar, Iterable<_i2.TripScalar>>? distinct;

  final _i2.TripSelect? select;

  final _i2.TripInclude? include;

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

class UserCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOutputTypeSelect({this.trips});

  final bool? trips;

  @override
  Map<String, dynamic> toJson() => {'trips': trips};
}

class UserCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountArgs({this.select});

  final _i2.UserCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserInclude({
    this.trips,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UserTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'trips': trips,
        '_count': $count,
      };
}

class TripOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.TripOrderByRelationAggregateInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'User'),
  email<String>('email', 'User'),
  username<String>('username', 'User'),
  createdAt<DateTime>('createdAt', 'User'),
  updatedAt<DateTime>('updatedAt', 'User');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TripUsersArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUsersArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.UserOrderByWithRelationInput>,
      _i2.UserOrderByWithRelationInput>? orderBy;

  final _i2.UserWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.UserScalar, Iterable<_i2.UserScalar>>? distinct;

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

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

class TripCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCountOutputTypeSelect({
    this.places,
    this.users,
  });

  final bool? places;

  final bool? users;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'users': users,
      };
}

class TripCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCountArgs({this.select});

  final _i2.TripCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripInclude({
    this.places,
    this.users,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.TripPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TripUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.TripCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'users': users,
        '_count': $count,
      };
}

class PlaceSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceSelect({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
    this.$count,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? note;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PlaceTripArgs>? trip;

  final _i1.PrismaUnion<bool, _i2.PlaceTagsArgs>? tags;

  final _i1.PrismaUnion<bool, _i2.PlaceCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
        '_count': $count,
      };
}

class TripSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripSelect({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
    this.$count,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.TripPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TripUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.TripCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
        '_count': $count,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
    this.$count,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.UserTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
        '_count': $count,
      };
}

class TagCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateWithoutPlacesInput({
    required this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final String tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagUncheckedCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedCreateWithoutPlacesInput({
    this.id,
    required this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagWhereUniqueInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagWhereUniqueInput({
    this.id,
    this.tagName,
    this.AND,
    this.OR,
    this.NOT,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final int? id;

  final String? tagName;

  final _i1.PrismaUnion<_i2.TagWhereInput, Iterable<_i2.TagWhereInput>>? AND;

  final Iterable<_i2.TagWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagWhereInput, Iterable<_i2.TagWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.TagsOnPlacesListRelationFilter? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TagCreateOrConnectWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateOrConnectWithoutPlacesInput({
    required this.where,
    required this.create,
  });

  final _i2.TagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagCreateWithoutPlacesInput,
      _i2.TagUncheckedCreateWithoutPlacesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TagCreateNestedOneWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateNestedOneWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TagCreateWithoutPlacesInput,
      _i2.TagUncheckedCreateWithoutPlacesInput>? create;

  final _i2.TagCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.TagWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TagsOnPlacesCreateWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateWithoutPlaceInput({required this.tag});

  final _i2.TagCreateNestedOneWithoutPlacesInput tag;

  @override
  Map<String, dynamic> toJson() => {'tag': tag};
}

class TagsOnPlacesUncheckedCreateWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedCreateWithoutPlaceInput({required this.tagId});

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {'tagId': tagId};
}

class TagsOnPlacesCreateOrConnectWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateOrConnectWithoutPlaceInput({
    required this.where,
    required this.create,
  });

  final _i2.TagsOnPlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateWithoutPlaceInput,
      _i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TagsOnPlacesCreateManyPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateManyPlaceInput({required this.tagId});

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {'tagId': tagId};
}

class TagsOnPlacesCreateManyPlaceInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateManyPlaceInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateManyPlaceInput,
      Iterable<_i2.TagsOnPlacesCreateManyPlaceInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class TagsOnPlacesCreateNestedManyWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateNestedManyWithoutPlaceInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.TagsOnPlacesCreateWithoutPlaceInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutPlaceInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput>>?
      connectOrCreate;

  final _i2.TagsOnPlacesCreateManyPlaceInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlaceCreateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateWithoutTripInput({
    required this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagsOnPlacesCreateNestedManyWithoutPlaceInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class TagsOnPlacesUncheckedCreateNestedManyWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedCreateNestedManyWithoutPlaceInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.TagsOnPlacesCreateWithoutPlaceInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutPlaceInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput>>?
      connectOrCreate;

  final _i2.TagsOnPlacesCreateManyPlaceInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlaceUncheckedCreateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedCreateWithoutTripInput({
    this.id,
    required this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final int? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagsOnPlacesUncheckedCreateNestedManyWithoutPlaceInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class PlaceCreateOrConnectWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateOrConnectWithoutTripInput({
    required this.where,
    required this.create,
  });

  final _i2.PlaceWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceCreateWithoutTripInput,
      _i2.PlaceUncheckedCreateWithoutTripInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlaceCreateManyTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateManyTripInput({
    this.id,
    required this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceCreateManyTripInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateManyTripInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PlaceCreateManyTripInput,
      Iterable<_i2.PlaceCreateManyTripInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PlaceCreateNestedManyWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateNestedManyWithoutTripInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlaceCreateWithoutTripInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTripInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTripInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTripInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTripInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTripInput>>? connectOrCreate;

  final _i2.PlaceCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TripCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateWithoutUsersInput({
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceCreateNestedManyWithoutTripInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class PlaceUncheckedCreateNestedManyWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedCreateNestedManyWithoutTripInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlaceCreateWithoutTripInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTripInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTripInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTripInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTripInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTripInput>>? connectOrCreate;

  final _i2.PlaceCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TripUncheckedCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedCreateWithoutUsersInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final int? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceUncheckedCreateNestedManyWithoutTripInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TripCreateOrConnectWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateOrConnectWithoutUsersInput({
    required this.where,
    required this.create,
  });

  final _i2.TripWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripCreateWithoutUsersInput,
      _i2.TripUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TripCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TripCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
  });

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
      };
}

class TripUncheckedCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TripCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
  });

  final int? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripUncheckedCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyUserAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUserAndReturnOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
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

class TagUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateWithoutPlacesInput({
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
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

class TagUncheckedUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedUpdateWithoutPlacesInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagUpsertWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpsertWithoutPlacesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.TagUpdateWithoutPlacesInput,
      _i2.TagUncheckedUpdateWithoutPlacesInput> update;

  final _i1.PrismaUnion<_i2.TagCreateWithoutPlacesInput,
      _i2.TagUncheckedCreateWithoutPlacesInput> create;

  final _i2.TagWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class TagUpdateToOneWithWhereWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateToOneWithWhereWithoutPlacesInput({
    this.where,
    required this.data,
  });

  final _i2.TagWhereInput? where;

  final _i1.PrismaUnion<_i2.TagUpdateWithoutPlacesInput,
      _i2.TagUncheckedUpdateWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagUpdateOneRequiredWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateOneRequiredWithoutPlacesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TagCreateWithoutPlacesInput,
      _i2.TagUncheckedCreateWithoutPlacesInput>? create;

  final _i2.TagCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.TagUpsertWithoutPlacesInput? upsert;

  final _i2.TagWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TagUpdateToOneWithWhereWithoutPlacesInput,
      _i1.PrismaUnion<_i2.TagUpdateWithoutPlacesInput,
          _i2.TagUncheckedUpdateWithoutPlacesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class TagsOnPlacesUpdateWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateWithoutPlaceInput({this.tag});

  final _i2.TagUpdateOneRequiredWithoutPlacesNestedInput? tag;

  @override
  Map<String, dynamic> toJson() => {'tag': tag};
}

class TagsOnPlacesUncheckedUpdateWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateWithoutPlaceInput({this.tagId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {'tagId': tagId};
}

class TagsOnPlacesUpsertWithWhereUniqueWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpsertWithWhereUniqueWithoutPlaceInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TagsOnPlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithoutPlaceInput,
      _i2.TagsOnPlacesUncheckedUpdateWithoutPlaceInput> update;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateWithoutPlaceInput,
      _i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class TagsOnPlacesUpdateWithWhereUniqueWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateWithWhereUniqueWithoutPlaceInput({
    required this.where,
    required this.data,
  });

  final _i2.TagsOnPlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithoutPlaceInput,
      _i2.TagsOnPlacesUncheckedUpdateWithoutPlaceInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagsOnPlacesScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereInput,
      Iterable<_i2.TagsOnPlacesScalarWhereInput>>? AND;

  final Iterable<_i2.TagsOnPlacesScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereInput,
      Iterable<_i2.TagsOnPlacesScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateManyMutationInput();

  @override
  Map<String, dynamic> toJson() => {};
}

class TagsOnPlacesUncheckedUpdateManyWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateManyWithoutPlaceInput({this.tagId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {'tagId': tagId};
}

class TagsOnPlacesUpdateManyWithWhereWithoutPlaceInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateManyWithWhereWithoutPlaceInput({
    required this.where,
    required this.data,
  });

  final _i2.TagsOnPlacesScalarWhereInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateManyMutationInput,
      _i2.TagsOnPlacesUncheckedUpdateManyWithoutPlaceInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagsOnPlacesUpdateManyWithoutPlaceNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateManyWithoutPlaceNestedInput({
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
          _i2.TagsOnPlacesCreateWithoutPlaceInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutPlaceInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutPlaceInput,
      Iterable<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutPlaceInput>>? upsert;

  final _i2.TagsOnPlacesCreateManyPlaceInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutPlaceInput,
      Iterable<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutPlaceInput>>? update;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateManyWithWhereWithoutPlaceInput,
          Iterable<_i2.TagsOnPlacesUpdateManyWithWhereWithoutPlaceInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereInput,
      Iterable<_i2.TagsOnPlacesScalarWhereInput>>? deleteMany;

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

class PlaceUpdateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateWithoutTripInput({
    this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagsOnPlacesUpdateManyWithoutPlaceNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class TagsOnPlacesUncheckedUpdateManyWithoutPlaceNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateManyWithoutPlaceNestedInput({
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
          _i2.TagsOnPlacesCreateWithoutPlaceInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutPlaceInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutPlaceInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutPlaceInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutPlaceInput,
      Iterable<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutPlaceInput>>? upsert;

  final _i2.TagsOnPlacesCreateManyPlaceInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutPlaceInput,
      Iterable<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutPlaceInput>>? update;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateManyWithWhereWithoutPlaceInput,
          Iterable<_i2.TagsOnPlacesUpdateManyWithWhereWithoutPlaceInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereInput,
      Iterable<_i2.TagsOnPlacesScalarWhereInput>>? deleteMany;

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

class PlaceUncheckedUpdateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateWithoutTripInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagsOnPlacesUncheckedUpdateManyWithoutPlaceNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class PlaceUpsertWithWhereUniqueWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpsertWithWhereUniqueWithoutTripInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlaceWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithoutTripInput,
      _i2.PlaceUncheckedUpdateWithoutTripInput> update;

  final _i1.PrismaUnion<_i2.PlaceCreateWithoutTripInput,
      _i2.PlaceUncheckedCreateWithoutTripInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlaceUpdateWithWhereUniqueWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateWithWhereUniqueWithoutTripInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithoutTripInput,
      _i2.PlaceUncheckedUpdateWithoutTripInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? AND;

  final Iterable<_i2.PlaceScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<_i2.IntFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateManyMutationInput({
    this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUncheckedUpdateManyWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateManyWithoutTripInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUpdateManyWithWhereWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateManyWithWhereWithoutTripInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlaceUpdateManyMutationInput,
      _i2.PlaceUncheckedUpdateManyWithoutTripInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceUpdateManyWithoutTripNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateManyWithoutTripNestedInput({
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
      _i2.PlaceCreateWithoutTripInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTripInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTripInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTripInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTripInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTripInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceUpsertWithWhereUniqueWithoutTripInput,
      Iterable<_i2.PlaceUpsertWithWhereUniqueWithoutTripInput>>? upsert;

  final _i2.PlaceCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithWhereUniqueWithoutTripInput,
      Iterable<_i2.PlaceUpdateWithWhereUniqueWithoutTripInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceUpdateManyWithWhereWithoutTripInput,
      Iterable<_i2.PlaceUpdateManyWithWhereWithoutTripInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? deleteMany;

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

class TripUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateWithoutUsersInput({
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PlaceUpdateManyWithoutTripNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class PlaceUncheckedUpdateManyWithoutTripNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateManyWithoutTripNestedInput({
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
      _i2.PlaceCreateWithoutTripInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTripInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTripInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTripInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTripInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTripInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceUpsertWithWhereUniqueWithoutTripInput,
      Iterable<_i2.PlaceUpsertWithWhereUniqueWithoutTripInput>>? upsert;

  final _i2.PlaceCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithWhereUniqueWithoutTripInput,
      Iterable<_i2.PlaceUpdateWithWhereUniqueWithoutTripInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceUpdateManyWithWhereWithoutTripInput,
      Iterable<_i2.PlaceUpdateManyWithWhereWithoutTripInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? deleteMany;

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

class TripUncheckedUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedUpdateWithoutUsersInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PlaceUncheckedUpdateManyWithoutTripNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TripUpsertWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpsertWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TripWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripUpdateWithoutUsersInput,
      _i2.TripUncheckedUpdateWithoutUsersInput> update;

  final _i1.PrismaUnion<_i2.TripCreateWithoutUsersInput,
      _i2.TripUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class TripUpdateWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.TripWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripUpdateWithoutUsersInput,
      _i2.TripUncheckedUpdateWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TripScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.TripScalarWhereInput,
      Iterable<_i2.TripScalarWhereInput>>? AND;

  final Iterable<_i2.TripScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripScalarWhereInput,
      Iterable<_i2.TripScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateManyMutationInput({
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripUncheckedUpdateManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedUpdateManyWithoutUsersInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripUpdateManyWithWhereWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateManyWithWhereWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.TripScalarWhereInput where;

  final _i1.PrismaUnion<_i2.TripUpdateManyMutationInput,
      _i2.TripUncheckedUpdateManyWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TripUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TripCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TripUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TripUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.TripUpdateManyWithWhereWithoutUsersInput,
      Iterable<_i2.TripUpdateManyWithWhereWithoutUsersInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TripScalarWhereInput,
      Iterable<_i2.TripScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TripUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
      };
}

class TripUncheckedUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TripCreateWithoutUsersInput,
      _i1.PrismaUnion<
          Iterable<_i2.TripCreateWithoutUsersInput>,
          _i1.PrismaUnion<_i2.TripUncheckedCreateWithoutUsersInput,
              Iterable<_i2.TripUncheckedCreateWithoutUsersInput>>>>? create;

  final _i1.PrismaUnion<_i2.TripCreateOrConnectWithoutUsersInput,
      Iterable<_i2.TripCreateOrConnectWithoutUsersInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TripUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TripWhereUniqueInput,
      Iterable<_i2.TripWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TripUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.TripUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.TripUpdateManyWithWhereWithoutUsersInput,
      Iterable<_i2.TripUpdateManyWithWhereWithoutUsersInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TripScalarWhereInput,
      Iterable<_i2.TripScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.trips,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TripUncheckedUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trips': trips,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? username;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType({this.id});

  factory UserAvgAggregateOutputType.fromJson(Map json) =>
      UserAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType({this.id});

  factory UserSumAggregateOutputType.fromJson(Map json) =>
      UserSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserAvgOrderByAggregateInput? $avg;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  final _i2.UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
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

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUserSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class UserCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutTripsInput({
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserUncheckedCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutTripsInput({
    this.id,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserCreateOrConnectWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutTripsInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserCreateWithoutTripsInput,
      _i2.UserUncheckedCreateWithoutTripsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UserCreateNestedManyWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedManyWithoutTripsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.UserCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.UserCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.UserUncheckedCreateWithoutTripsInput,
              Iterable<_i2.UserUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.UserCreateOrConnectWithoutTripsInput,
      Iterable<_i2.UserCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TripCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateInput({
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceCreateNestedManyWithoutTripInput? places;

  final _i2.UserCreateNestedManyWithoutTripsInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
      };
}

class UserUncheckedCreateNestedManyWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateNestedManyWithoutTripsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.UserCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.UserCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.UserUncheckedCreateWithoutTripsInput,
              Iterable<_i2.UserUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.UserCreateOrConnectWithoutTripsInput,
      Iterable<_i2.UserCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TripUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedCreateInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final int? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceUncheckedCreateNestedManyWithoutTripInput? places;

  final _i2.UserUncheckedCreateNestedManyWithoutTripsInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
      };
}

class TripCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateManyInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyTripAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyTripAndReturnOutputTypeSelect({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutTripsInput({
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserUncheckedUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutTripsInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserUpsertWithWhereUniqueWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithWhereUniqueWithoutTripsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserUpdateWithoutTripsInput,
      _i2.UserUncheckedUpdateWithoutTripsInput> update;

  final _i1.PrismaUnion<_i2.UserCreateWithoutTripsInput,
      _i2.UserUncheckedCreateWithoutTripsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class UserUpdateWithWhereUniqueWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithWhereUniqueWithoutTripsInput({
    required this.where,
    required this.data,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserUpdateWithoutTripsInput,
      _i2.UserUncheckedUpdateWithoutTripsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UserScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereInput,
      Iterable<_i2.UserScalarWhereInput>>? AND;

  final Iterable<_i2.UserScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereInput,
      Iterable<_i2.UserScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserUncheckedUpdateManyWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyWithoutTripsInput({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UserUpdateManyWithWhereWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyWithWhereWithoutTripsInput({
    required this.where,
    required this.data,
  });

  final _i2.UserScalarWhereInput where;

  final _i1.PrismaUnion<_i2.UserUpdateManyMutationInput,
      _i2.UserUncheckedUpdateManyWithoutTripsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UserUpdateManyWithoutTripsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyWithoutTripsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.UserCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.UserCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.UserUncheckedCreateWithoutTripsInput,
              Iterable<_i2.UserUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.UserCreateOrConnectWithoutTripsInput,
      Iterable<_i2.UserCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.UserUpsertWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.UserUpsertWithWhereUniqueWithoutTripsInput>>? upsert;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.UserUpdateWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.UserUpdateWithWhereUniqueWithoutTripsInput>>? update;

  final _i1.PrismaUnion<_i2.UserUpdateManyWithWhereWithoutTripsInput,
      Iterable<_i2.UserUpdateManyWithWhereWithoutTripsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.UserScalarWhereInput,
      Iterable<_i2.UserScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TripUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateInput({
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PlaceUpdateManyWithoutTripNestedInput? places;

  final _i2.UserUpdateManyWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
      };
}

class UserUncheckedUpdateManyWithoutTripsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyWithoutTripsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.UserCreateWithoutTripsInput,
      _i1.PrismaUnion<
          Iterable<_i2.UserCreateWithoutTripsInput>,
          _i1.PrismaUnion<_i2.UserUncheckedCreateWithoutTripsInput,
              Iterable<_i2.UserUncheckedCreateWithoutTripsInput>>>>? create;

  final _i1.PrismaUnion<_i2.UserCreateOrConnectWithoutTripsInput,
      Iterable<_i2.UserCreateOrConnectWithoutTripsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.UserUpsertWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.UserUpsertWithWhereUniqueWithoutTripsInput>>? upsert;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.UserWhereUniqueInput,
      Iterable<_i2.UserWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.UserUpdateWithWhereUniqueWithoutTripsInput,
      Iterable<_i2.UserUpdateWithWhereUniqueWithoutTripsInput>>? update;

  final _i1.PrismaUnion<_i2.UserUpdateManyWithWhereWithoutTripsInput,
      Iterable<_i2.UserUpdateManyWithWhereWithoutTripsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.UserScalarWhereInput,
      Iterable<_i2.UserScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TripUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedUpdateInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PlaceUncheckedUpdateManyWithoutTripNestedInput? places;

  final _i2.UserUncheckedUpdateManyWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
        'users': users,
      };
}

class TripUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedUpdateManyInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripCountAggregateOutputType {
  const TripCountAggregateOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory TripCountAggregateOutputType.fromJson(Map json) =>
      TripCountAggregateOutputType(
        id: json['id'],
        tripName: json['tripName'],
        description: json['description'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? tripName;

  final int? description;

  final int? startDate;

  final int? endDate;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class TripAvgAggregateOutputType {
  const TripAvgAggregateOutputType({this.id});

  factory TripAvgAggregateOutputType.fromJson(Map json) =>
      TripAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class TripSumAggregateOutputType {
  const TripSumAggregateOutputType({this.id});

  factory TripSumAggregateOutputType.fromJson(Map json) =>
      TripSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class TripMinAggregateOutputType {
  const TripMinAggregateOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  factory TripMinAggregateOutputType.fromJson(Map json) =>
      TripMinAggregateOutputType(
        id: json['id'],
        tripName: json['tripName'],
        description: json['description'],
        startDate: switch (json['startDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['startDate']
        },
        endDate: switch (json['endDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['endDate']
        },
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class TripMaxAggregateOutputType {
  const TripMaxAggregateOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  factory TripMaxAggregateOutputType.fromJson(Map json) =>
      TripMaxAggregateOutputType(
        id: json['id'],
        tripName: json['tripName'],
        description: json['description'],
        startDate: switch (json['startDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['startDate']
        },
        endDate: switch (json['endDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['endDate']
        },
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class TripGroupByOutputType {
  const TripGroupByOutputType({
    this.id,
    this.tripName,
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

  factory TripGroupByOutputType.fromJson(Map json) => TripGroupByOutputType(
        id: json['id'],
        tripName: json['tripName'],
        description: json['description'],
        startDate: switch (json['startDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['startDate']
        },
        endDate: switch (json['endDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['endDate']
        },
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        $count: json['_count'] is Map
            ? _i2.TripCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TripAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TripSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TripMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TripMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripCountAggregateOutputType? $count;

  final _i2.TripAvgAggregateOutputType? $avg;

  final _i2.TripSumAggregateOutputType? $sum;

  final _i2.TripMinAggregateOutputType? $min;

  final _i2.TripMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TripCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCountOrderByAggregateInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TripMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripMaxOrderByAggregateInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripMinOrderByAggregateInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TripOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripOrderByWithAggregationInput({
    this.id,
    this.tripName,
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

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.TripCountOrderByAggregateInput? $count;

  final _i2.TripAvgOrderByAggregateInput? $avg;

  final _i2.TripMaxOrderByAggregateInput? $max;

  final _i2.TripMinOrderByAggregateInput? $min;

  final _i2.TripSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class TripScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.TripScalarWhereWithAggregatesInput,
      Iterable<_i2.TripScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TripScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TripScalarWhereWithAggregatesInput,
      Iterable<_i2.TripScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCountAggregateOutputTypeSelect({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class TripGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripGroupByOutputTypeCountArgs({this.select});

  final _i2.TripCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TripGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripGroupByOutputTypeAvgArgs({this.select});

  final _i2.TripAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TripGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripGroupByOutputTypeSumArgs({this.select});

  final _i2.TripSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripMinAggregateOutputTypeSelect({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripGroupByOutputTypeMinArgs({this.select});

  final _i2.TripMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripMaxAggregateOutputTypeSelect({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TripGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripGroupByOutputTypeMaxArgs({this.select});

  final _i2.TripMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TripGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripGroupByOutputTypeSelect({
    this.id,
    this.tripName,
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

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTrip {
  const AggregateTrip({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateTrip.fromJson(Map json) => AggregateTrip(
        $count: json['_count'] is Map
            ? _i2.TripCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TripAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TripSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TripMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TripMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TripCountAggregateOutputType? $count;

  final _i2.TripAvgAggregateOutputType? $avg;

  final _i2.TripSumAggregateOutputType? $sum;

  final _i2.TripMinAggregateOutputType? $min;

  final _i2.TripMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTripCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripCountArgs({this.select});

  final _i2.TripCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripAvgArgs({this.select});

  final _i2.TripAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripSumArgs({this.select});

  final _i2.TripSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripMinArgs({this.select});

  final _i2.TripMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripMaxArgs({this.select});

  final _i2.TripMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTripSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTripSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTripCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTripAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateTripSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateTripMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTripMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class TripCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateWithoutPlacesInput({
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.UserCreateNestedManyWithoutTripsInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'users': users,
      };
}

class TripUncheckedCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedCreateWithoutPlacesInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  final int? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.UserUncheckedCreateNestedManyWithoutTripsInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'users': users,
      };
}

class TripCreateOrConnectWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateOrConnectWithoutPlacesInput({
    required this.where,
    required this.create,
  });

  final _i2.TripWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripCreateWithoutPlacesInput,
      _i2.TripUncheckedCreateWithoutPlacesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TripCreateNestedOneWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateNestedOneWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TripCreateWithoutPlacesInput,
      _i2.TripUncheckedCreateWithoutPlacesInput>? create;

  final _i2.TripCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.TripWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlaceCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateInput({
    required this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    required this.trip,
    this.tags,
  });

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripCreateNestedOneWithoutPlacesInput trip;

  final _i2.TagsOnPlacesCreateNestedManyWithoutPlaceInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
      };
}

class PlaceUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedCreateInput({
    this.id,
    required this.placeName,
    this.description,
    this.note,
    required this.tripId,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final int? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final int tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagsOnPlacesUncheckedCreateNestedManyWithoutPlaceInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class PlaceCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateManyInput({
    this.id,
    required this.placeName,
    this.description,
    this.note,
    required this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final int tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyPlaceAndReturnOutputTypeTripArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPlaceAndReturnOutputTypeTripArgs({
    this.select,
    this.include,
  });

  final _i2.TripSelect? select;

  final _i2.TripInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyPlaceAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPlaceAndReturnOutputTypeSelect({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? note;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.CreateManyPlaceAndReturnOutputTypeTripArgs>?
      trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
      };
}

class CreateManyPlaceAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyPlaceAndReturnOutputTypeInclude({this.trip});

  final _i1.PrismaUnion<bool, _i2.CreateManyPlaceAndReturnOutputTypeTripArgs>?
      trip;

  @override
  Map<String, dynamic> toJson() => {'trip': trip};
}

class TripUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateWithoutPlacesInput({
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.UserUpdateManyWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'users': users,
      };
}

class TripUncheckedUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedUpdateWithoutPlacesInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.UserUncheckedUpdateManyWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'users': users,
      };
}

class TripUpsertWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpsertWithoutPlacesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.TripUpdateWithoutPlacesInput,
      _i2.TripUncheckedUpdateWithoutPlacesInput> update;

  final _i1.PrismaUnion<_i2.TripCreateWithoutPlacesInput,
      _i2.TripUncheckedCreateWithoutPlacesInput> create;

  final _i2.TripWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class TripUpdateToOneWithWhereWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateToOneWithWhereWithoutPlacesInput({
    this.where,
    required this.data,
  });

  final _i2.TripWhereInput? where;

  final _i1.PrismaUnion<_i2.TripUpdateWithoutPlacesInput,
      _i2.TripUncheckedUpdateWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TripUpdateOneRequiredWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateOneRequiredWithoutPlacesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TripCreateWithoutPlacesInput,
      _i2.TripUncheckedCreateWithoutPlacesInput>? create;

  final _i2.TripCreateOrConnectWithoutPlacesInput? connectOrCreate;

  final _i2.TripUpsertWithoutPlacesInput? upsert;

  final _i2.TripWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TripUpdateToOneWithWhereWithoutPlacesInput,
      _i1.PrismaUnion<_i2.TripUpdateWithoutPlacesInput,
          _i2.TripUncheckedUpdateWithoutPlacesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PlaceUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateInput({
    this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TripUpdateOneRequiredWithoutPlacesNestedInput? trip;

  final _i2.TagsOnPlacesUpdateManyWithoutPlaceNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
      };
}

class PlaceUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagsOnPlacesUncheckedUpdateManyWithoutPlaceNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class PlaceUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateManyInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceCountAggregateOutputType {
  const PlaceCountAggregateOutputType({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory PlaceCountAggregateOutputType.fromJson(Map json) =>
      PlaceCountAggregateOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        note: json['note'],
        tripId: json['tripId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? placeName;

  final int? description;

  final int? note;

  final int? tripId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class PlaceAvgAggregateOutputType {
  const PlaceAvgAggregateOutputType({
    this.id,
    this.tripId,
  });

  factory PlaceAvgAggregateOutputType.fromJson(Map json) =>
      PlaceAvgAggregateOutputType(
        id: json['id'],
        tripId: json['tripId'],
      );

  final double? id;

  final double? tripId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
      };
}

class PlaceSumAggregateOutputType {
  const PlaceSumAggregateOutputType({
    this.id,
    this.tripId,
  });

  factory PlaceSumAggregateOutputType.fromJson(Map json) =>
      PlaceSumAggregateOutputType(
        id: json['id'],
        tripId: json['tripId'],
      );

  final int? id;

  final int? tripId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
      };
}

class PlaceMinAggregateOutputType {
  const PlaceMinAggregateOutputType({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  factory PlaceMinAggregateOutputType.fromJson(Map json) =>
      PlaceMinAggregateOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        note: json['note'],
        tripId: json['tripId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? placeName;

  final String? description;

  final String? note;

  final int? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class PlaceMaxAggregateOutputType {
  const PlaceMaxAggregateOutputType({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  factory PlaceMaxAggregateOutputType.fromJson(Map json) =>
      PlaceMaxAggregateOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        note: json['note'],
        tripId: json['tripId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? placeName;

  final String? description;

  final String? note;

  final int? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class PlaceGroupByOutputType {
  const PlaceGroupByOutputType({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PlaceGroupByOutputType.fromJson(Map json) => PlaceGroupByOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        note: json['note'],
        tripId: json['tripId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        $count: json['_count'] is Map
            ? _i2.PlaceCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlaceAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlaceSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlaceMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlaceMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? placeName;

  final String? description;

  final String? note;

  final int? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceCountAggregateOutputType? $count;

  final _i2.PlaceAvgAggregateOutputType? $avg;

  final _i2.PlaceSumAggregateOutputType? $sum;

  final _i2.PlaceMinAggregateOutputType? $min;

  final _i2.PlaceMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PlaceCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCountOrderByAggregateInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? note;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceAvgOrderByAggregateInput({
    this.id,
    this.tripId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
      };
}

class PlaceMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceMaxOrderByAggregateInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? note;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceMinOrderByAggregateInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? note;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceSumOrderByAggregateInput({
    this.id,
    this.tripId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
      };
}

class PlaceOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceOrderByWithAggregationInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? note;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PlaceCountOrderByAggregateInput? $count;

  final _i2.PlaceAvgOrderByAggregateInput? $avg;

  final _i2.PlaceMaxOrderByAggregateInput? $max;

  final _i2.PlaceMinOrderByAggregateInput? $min;

  final _i2.PlaceSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class PlaceScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PlaceScalarWhereWithAggregatesInput,
      Iterable<_i2.PlaceScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PlaceScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereWithAggregatesInput,
      Iterable<_i2.PlaceScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? tripId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCountAggregateOutputTypeSelect({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? note;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class PlaceGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceGroupByOutputTypeCountArgs({this.select});

  final _i2.PlaceCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceAvgAggregateOutputTypeSelect({
    this.id,
    this.tripId,
  });

  final bool? id;

  final bool? tripId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
      };
}

class PlaceGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceGroupByOutputTypeAvgArgs({this.select});

  final _i2.PlaceAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceSumAggregateOutputTypeSelect({
    this.id,
    this.tripId,
  });

  final bool? id;

  final bool? tripId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
      };
}

class PlaceGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceGroupByOutputTypeSumArgs({this.select});

  final _i2.PlaceSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceMinAggregateOutputTypeSelect({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? note;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceGroupByOutputTypeMinArgs({this.select});

  final _i2.PlaceMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceMaxAggregateOutputTypeSelect({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? note;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceGroupByOutputTypeMaxArgs({this.select});

  final _i2.PlaceMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlaceGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceGroupByOutputTypeSelect({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? note;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePlace {
  const AggregatePlace({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePlace.fromJson(Map json) => AggregatePlace(
        $count: json['_count'] is Map
            ? _i2.PlaceCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlaceAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlaceSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlaceMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlaceMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PlaceCountAggregateOutputType? $count;

  final _i2.PlaceAvgAggregateOutputType? $avg;

  final _i2.PlaceSumAggregateOutputType? $sum;

  final _i2.PlaceMinAggregateOutputType? $min;

  final _i2.PlaceMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePlaceCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceCountArgs({this.select});

  final _i2.PlaceCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceAvgArgs({this.select});

  final _i2.PlaceAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceSumArgs({this.select});

  final _i2.PlaceSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceMinArgs({this.select});

  final _i2.PlaceMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceMaxArgs({this.select});

  final _i2.PlaceMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlaceSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlaceSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum TagScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Tag'),
  tagName<String>('tagName', 'Tag'),
  createdAt<DateTime>('createdAt', 'Tag'),
  updatedAt<DateTime>('updatedAt', 'Tag');

  const TagScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PlaceCreateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateWithoutTagsInput({
    required this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    required this.trip,
  });

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripCreateNestedOneWithoutPlacesInput trip;

  @override
  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
      };
}

class PlaceUncheckedCreateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedCreateWithoutTagsInput({
    this.id,
    required this.placeName,
    this.description,
    this.note,
    required this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? note;

  final int tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceCreateOrConnectWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateOrConnectWithoutTagsInput({
    required this.where,
    required this.create,
  });

  final _i2.PlaceWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceCreateWithoutTagsInput,
      _i2.PlaceUncheckedCreateWithoutTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlaceCreateNestedOneWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateNestedOneWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PlaceCreateWithoutTagsInput,
      _i2.PlaceUncheckedCreateWithoutTagsInput>? create;

  final _i2.PlaceCreateOrConnectWithoutTagsInput? connectOrCreate;

  final _i2.PlaceWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TagsOnPlacesCreateWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateWithoutTagInput({required this.place});

  final _i2.PlaceCreateNestedOneWithoutTagsInput place;

  @override
  Map<String, dynamic> toJson() => {'place': place};
}

class TagsOnPlacesUncheckedCreateWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedCreateWithoutTagInput({required this.placeId});

  final int placeId;

  @override
  Map<String, dynamic> toJson() => {'placeId': placeId};
}

class TagsOnPlacesCreateOrConnectWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateOrConnectWithoutTagInput({
    required this.where,
    required this.create,
  });

  final _i2.TagsOnPlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateWithoutTagInput,
      _i2.TagsOnPlacesUncheckedCreateWithoutTagInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TagsOnPlacesCreateManyTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateManyTagInput({required this.placeId});

  final int placeId;

  @override
  Map<String, dynamic> toJson() => {'placeId': placeId};
}

class TagsOnPlacesCreateManyTagInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateManyTagInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateManyTagInput,
      Iterable<_i2.TagsOnPlacesCreateManyTagInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class TagsOnPlacesCreateNestedManyWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateNestedManyWithoutTagInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.TagsOnPlacesCreateWithoutTagInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutTagInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput>>?
      connectOrCreate;

  final _i2.TagsOnPlacesCreateManyTagInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TagCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateInput({
    required this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final String tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagsOnPlacesCreateNestedManyWithoutTagInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TagsOnPlacesUncheckedCreateNestedManyWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedCreateNestedManyWithoutTagInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.TagsOnPlacesCreateWithoutTagInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutTagInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput>>?
      connectOrCreate;

  final _i2.TagsOnPlacesCreateManyTagInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TagUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedCreateInput({
    this.id,
    required this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final int? id;

  final String tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagsOnPlacesUncheckedCreateNestedManyWithoutTagInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TagCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateManyInput({
    this.id,
    required this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;

  final String tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyTagAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyTagAndReturnOutputTypeSelect({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? tagName;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUpdateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateWithoutTagsInput({
    this.placeName,
    this.description,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.trip,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TripUpdateOneRequiredWithoutPlacesNestedInput? trip;

  @override
  Map<String, dynamic> toJson() => {
        'placeName': placeName,
        'description': description,
        'note': note,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
      };
}

class PlaceUncheckedUpdateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateWithoutTagsInput({
    this.id,
    this.placeName,
    this.description,
    this.note,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? note;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUpsertWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpsertWithoutTagsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.PlaceUpdateWithoutTagsInput,
      _i2.PlaceUncheckedUpdateWithoutTagsInput> update;

  final _i1.PrismaUnion<_i2.PlaceCreateWithoutTagsInput,
      _i2.PlaceUncheckedCreateWithoutTagsInput> create;

  final _i2.PlaceWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class PlaceUpdateToOneWithWhereWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateToOneWithWhereWithoutTagsInput({
    this.where,
    required this.data,
  });

  final _i2.PlaceWhereInput? where;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithoutTagsInput,
      _i2.PlaceUncheckedUpdateWithoutTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceUpdateOneRequiredWithoutTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateOneRequiredWithoutTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PlaceCreateWithoutTagsInput,
      _i2.PlaceUncheckedCreateWithoutTagsInput>? create;

  final _i2.PlaceCreateOrConnectWithoutTagsInput? connectOrCreate;

  final _i2.PlaceUpsertWithoutTagsInput? upsert;

  final _i2.PlaceWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.PlaceUpdateToOneWithWhereWithoutTagsInput,
      _i1.PrismaUnion<_i2.PlaceUpdateWithoutTagsInput,
          _i2.PlaceUncheckedUpdateWithoutTagsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class TagsOnPlacesUpdateWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateWithoutTagInput({this.place});

  final _i2.PlaceUpdateOneRequiredWithoutTagsNestedInput? place;

  @override
  Map<String, dynamic> toJson() => {'place': place};
}

class TagsOnPlacesUncheckedUpdateWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateWithoutTagInput({this.placeId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  @override
  Map<String, dynamic> toJson() => {'placeId': placeId};
}

class TagsOnPlacesUpsertWithWhereUniqueWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpsertWithWhereUniqueWithoutTagInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TagsOnPlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithoutTagInput,
      _i2.TagsOnPlacesUncheckedUpdateWithoutTagInput> update;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateWithoutTagInput,
      _i2.TagsOnPlacesUncheckedCreateWithoutTagInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class TagsOnPlacesUpdateWithWhereUniqueWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateWithWhereUniqueWithoutTagInput({
    required this.where,
    required this.data,
  });

  final _i2.TagsOnPlacesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithoutTagInput,
      _i2.TagsOnPlacesUncheckedUpdateWithoutTagInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagsOnPlacesUncheckedUpdateManyWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateManyWithoutTagInput({this.placeId});

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  @override
  Map<String, dynamic> toJson() => {'placeId': placeId};
}

class TagsOnPlacesUpdateManyWithWhereWithoutTagInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateManyWithWhereWithoutTagInput({
    required this.where,
    required this.data,
  });

  final _i2.TagsOnPlacesScalarWhereInput where;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateManyMutationInput,
      _i2.TagsOnPlacesUncheckedUpdateManyWithoutTagInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagsOnPlacesUpdateManyWithoutTagNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateManyWithoutTagNestedInput({
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
          _i2.TagsOnPlacesCreateWithoutTagInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutTagInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutTagInput,
      Iterable<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutTagInput>>? upsert;

  final _i2.TagsOnPlacesCreateManyTagInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutTagInput,
      Iterable<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutTagInput>>? update;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateManyWithWhereWithoutTagInput,
      Iterable<_i2.TagsOnPlacesUpdateManyWithWhereWithoutTagInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereInput,
      Iterable<_i2.TagsOnPlacesScalarWhereInput>>? deleteMany;

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

class TagUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateInput({
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagsOnPlacesUpdateManyWithoutTagNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TagsOnPlacesUncheckedUpdateManyWithoutTagNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateManyWithoutTagNestedInput({
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
          _i2.TagsOnPlacesCreateWithoutTagInput,
          _i1.PrismaUnion<
              Iterable<_i2.TagsOnPlacesCreateWithoutTagInput>,
              _i1.PrismaUnion<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput,
                  Iterable<_i2.TagsOnPlacesUncheckedCreateWithoutTagInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput,
          Iterable<_i2.TagsOnPlacesCreateOrConnectWithoutTagInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutTagInput,
      Iterable<_i2.TagsOnPlacesUpsertWithWhereUniqueWithoutTagInput>>? upsert;

  final _i2.TagsOnPlacesCreateManyTagInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TagsOnPlacesWhereUniqueInput,
      Iterable<_i2.TagsOnPlacesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutTagInput,
      Iterable<_i2.TagsOnPlacesUpdateWithWhereUniqueWithoutTagInput>>? update;

  final _i1.PrismaUnion<_i2.TagsOnPlacesUpdateManyWithWhereWithoutTagInput,
      Iterable<_i2.TagsOnPlacesUpdateManyWithWhereWithoutTagInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereInput,
      Iterable<_i2.TagsOnPlacesScalarWhereInput>>? deleteMany;

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

class TagUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedUpdateInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagsOnPlacesUncheckedUpdateManyWithoutTagNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class TagUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateManyMutationInput({
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedUpdateManyInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagCountAggregateOutputType {
  const TagCountAggregateOutputType({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory TagCountAggregateOutputType.fromJson(Map json) =>
      TagCountAggregateOutputType(
        id: json['id'],
        tagName: json['tagName'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? tagName;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class TagAvgAggregateOutputType {
  const TagAvgAggregateOutputType({this.id});

  factory TagAvgAggregateOutputType.fromJson(Map json) =>
      TagAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class TagSumAggregateOutputType {
  const TagSumAggregateOutputType({this.id});

  factory TagSumAggregateOutputType.fromJson(Map json) =>
      TagSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class TagMinAggregateOutputType {
  const TagMinAggregateOutputType({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  factory TagMinAggregateOutputType.fromJson(Map json) =>
      TagMinAggregateOutputType(
        id: json['id'],
        tagName: json['tagName'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class TagMaxAggregateOutputType {
  const TagMaxAggregateOutputType({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  factory TagMaxAggregateOutputType.fromJson(Map json) =>
      TagMaxAggregateOutputType(
        id: json['id'],
        tagName: json['tagName'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final int? id;

  final String? tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class TagGroupByOutputType {
  const TagGroupByOutputType({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory TagGroupByOutputType.fromJson(Map json) => TagGroupByOutputType(
        id: json['id'],
        tagName: json['tagName'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        $count: json['_count'] is Map
            ? _i2.TagCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TagAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TagSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TagMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagCountAggregateOutputType? $count;

  final _i2.TagAvgAggregateOutputType? $avg;

  final _i2.TagSumAggregateOutputType? $sum;

  final _i2.TagMinAggregateOutputType? $min;

  final _i2.TagMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TagCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCountOrderByAggregateInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TagMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagMaxOrderByAggregateInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagMinOrderByAggregateInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TagOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagOrderByWithAggregationInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.TagCountOrderByAggregateInput? $count;

  final _i2.TagAvgOrderByAggregateInput? $avg;

  final _i2.TagMaxOrderByAggregateInput? $max;

  final _i2.TagMinOrderByAggregateInput? $min;

  final _i2.TagSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class TagScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.TagScalarWhereWithAggregatesInput,
      Iterable<_i2.TagScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TagScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TagScalarWhereWithAggregatesInput,
      Iterable<_i2.TagScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? tagName;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCountAggregateOutputTypeSelect({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? tagName;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class TagGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagGroupByOutputTypeCountArgs({this.select});

  final _i2.TagCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TagGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagGroupByOutputTypeAvgArgs({this.select});

  final _i2.TagAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class TagGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagGroupByOutputTypeSumArgs({this.select});

  final _i2.TagSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagMinAggregateOutputTypeSelect({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? tagName;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagGroupByOutputTypeMinArgs({this.select});

  final _i2.TagMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagMaxAggregateOutputTypeSelect({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? tagName;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class TagGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagGroupByOutputTypeMaxArgs({this.select});

  final _i2.TagMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagGroupByOutputTypeSelect({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? tagName;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTag {
  const AggregateTag({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateTag.fromJson(Map json) => AggregateTag(
        $count: json['_count'] is Map
            ? _i2.TagCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TagAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TagSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TagMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TagCountAggregateOutputType? $count;

  final _i2.TagAvgAggregateOutputType? $avg;

  final _i2.TagSumAggregateOutputType? $sum;

  final _i2.TagMinAggregateOutputType? $min;

  final _i2.TagMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTagCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagCountArgs({this.select});

  final _i2.TagCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagAvgArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagAvgArgs({this.select});

  final _i2.TagAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagSumArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagSumArgs({this.select});

  final _i2.TagSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagMinArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagMinArgs({this.select});

  final _i2.TagMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagMaxArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagMaxArgs({this.select});

  final _i2.TagMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTagCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTagAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateTagSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateTagMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTagMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class TagsOnPlacesCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateInput({
    required this.place,
    required this.tag,
  });

  final _i2.PlaceCreateNestedOneWithoutTagsInput place;

  final _i2.TagCreateNestedOneWithoutPlacesInput tag;

  @override
  Map<String, dynamic> toJson() => {
        'place': place,
        'tag': tag,
      };
}

class TagsOnPlacesUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedCreateInput({
    required this.placeId,
    required this.tagId,
  });

  final int placeId;

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCreateManyInput({
    required this.placeId,
    required this.tagId,
  });

  final int placeId;

  final int tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class CreateManyTagsOnPlacesAndReturnOutputTypePlaceArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyTagsOnPlacesAndReturnOutputTypePlaceArgs({
    this.select,
    this.include,
  });

  final _i2.PlaceSelect? select;

  final _i2.PlaceInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyTagsOnPlacesAndReturnOutputTypeTagArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyTagsOnPlacesAndReturnOutputTypeTagArgs({
    this.select,
    this.include,
  });

  final _i2.TagSelect? select;

  final _i2.TagInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyTagsOnPlacesAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyTagsOnPlacesAndReturnOutputTypeSelect({
    this.placeId,
    this.tagId,
    this.place,
    this.tag,
  });

  final bool? placeId;

  final bool? tagId;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyTagsOnPlacesAndReturnOutputTypePlaceArgs>? place;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyTagsOnPlacesAndReturnOutputTypeTagArgs>?
      tag;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        'place': place,
        'tag': tag,
      };
}

class CreateManyTagsOnPlacesAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyTagsOnPlacesAndReturnOutputTypeInclude({
    this.place,
    this.tag,
  });

  final _i1.PrismaUnion<bool,
      _i2.CreateManyTagsOnPlacesAndReturnOutputTypePlaceArgs>? place;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyTagsOnPlacesAndReturnOutputTypeTagArgs>?
      tag;

  @override
  Map<String, dynamic> toJson() => {
        'place': place,
        'tag': tag,
      };
}

class TagsOnPlacesUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUpdateInput({
    this.place,
    this.tag,
  });

  final _i2.PlaceUpdateOneRequiredWithoutTagsNestedInput? place;

  final _i2.TagUpdateOneRequiredWithoutPlacesNestedInput? tag;

  @override
  Map<String, dynamic> toJson() => {
        'place': place,
        'tag': tag,
      };
}

class TagsOnPlacesUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateInput({
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesUncheckedUpdateManyInput({
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? placeId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesCountAggregateOutputType {
  const TagsOnPlacesCountAggregateOutputType({
    this.placeId,
    this.tagId,
    this.$all,
  });

  factory TagsOnPlacesCountAggregateOutputType.fromJson(Map json) =>
      TagsOnPlacesCountAggregateOutputType(
        placeId: json['placeId'],
        tagId: json['tagId'],
        $all: json['_all'],
      );

  final int? placeId;

  final int? tagId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        '_all': $all,
      };
}

class TagsOnPlacesAvgAggregateOutputType {
  const TagsOnPlacesAvgAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory TagsOnPlacesAvgAggregateOutputType.fromJson(Map json) =>
      TagsOnPlacesAvgAggregateOutputType(
        placeId: json['placeId'],
        tagId: json['tagId'],
      );

  final double? placeId;

  final double? tagId;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesSumAggregateOutputType {
  const TagsOnPlacesSumAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory TagsOnPlacesSumAggregateOutputType.fromJson(Map json) =>
      TagsOnPlacesSumAggregateOutputType(
        placeId: json['placeId'],
        tagId: json['tagId'],
      );

  final int? placeId;

  final int? tagId;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesMinAggregateOutputType {
  const TagsOnPlacesMinAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory TagsOnPlacesMinAggregateOutputType.fromJson(Map json) =>
      TagsOnPlacesMinAggregateOutputType(
        placeId: json['placeId'],
        tagId: json['tagId'],
      );

  final int? placeId;

  final int? tagId;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesMaxAggregateOutputType {
  const TagsOnPlacesMaxAggregateOutputType({
    this.placeId,
    this.tagId,
  });

  factory TagsOnPlacesMaxAggregateOutputType.fromJson(Map json) =>
      TagsOnPlacesMaxAggregateOutputType(
        placeId: json['placeId'],
        tagId: json['tagId'],
      );

  final int? placeId;

  final int? tagId;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesGroupByOutputType {
  const TagsOnPlacesGroupByOutputType({
    this.placeId,
    this.tagId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory TagsOnPlacesGroupByOutputType.fromJson(Map json) =>
      TagsOnPlacesGroupByOutputType(
        placeId: json['placeId'],
        tagId: json['tagId'],
        $count: json['_count'] is Map
            ? _i2.TagsOnPlacesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TagsOnPlacesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TagsOnPlacesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TagsOnPlacesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagsOnPlacesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? placeId;

  final int? tagId;

  final _i2.TagsOnPlacesCountAggregateOutputType? $count;

  final _i2.TagsOnPlacesAvgAggregateOutputType? $avg;

  final _i2.TagsOnPlacesSumAggregateOutputType? $sum;

  final _i2.TagsOnPlacesMinAggregateOutputType? $min;

  final _i2.TagsOnPlacesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TagsOnPlacesCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCountOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesAvgOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesMaxOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesMinOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesSumOrderByAggregateInput({
    this.placeId,
    this.tagId,
  });

  final _i2.SortOrder? placeId;

  final _i2.SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesOrderByWithAggregationInput({
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

  final _i2.TagsOnPlacesCountOrderByAggregateInput? $count;

  final _i2.TagsOnPlacesAvgOrderByAggregateInput? $avg;

  final _i2.TagsOnPlacesMaxOrderByAggregateInput? $max;

  final _i2.TagsOnPlacesMinOrderByAggregateInput? $min;

  final _i2.TagsOnPlacesSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class TagsOnPlacesScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.placeId,
    this.tagId,
  });

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereWithAggregatesInput,
      Iterable<_i2.TagsOnPlacesScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TagsOnPlacesScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TagsOnPlacesScalarWhereWithAggregatesInput,
      Iterable<_i2.TagsOnPlacesScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? placeId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesCountAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
    this.$all,
  });

  final bool? placeId;

  final bool? tagId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        '_all': $all,
      };
}

class TagsOnPlacesGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesGroupByOutputTypeCountArgs({this.select});

  final _i2.TagsOnPlacesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsOnPlacesAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesAvgAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesGroupByOutputTypeAvgArgs({this.select});

  final _i2.TagsOnPlacesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsOnPlacesSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesSumAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesGroupByOutputTypeSumArgs({this.select});

  final _i2.TagsOnPlacesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsOnPlacesMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesMinAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesGroupByOutputTypeMinArgs({this.select});

  final _i2.TagsOnPlacesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsOnPlacesMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesMaxAggregateOutputTypeSelect({
    this.placeId,
    this.tagId,
  });

  final bool? placeId;

  final bool? tagId;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
      };
}

class TagsOnPlacesGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesGroupByOutputTypeMaxArgs({this.select});

  final _i2.TagsOnPlacesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TagsOnPlacesGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagsOnPlacesGroupByOutputTypeSelect({
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

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TagsOnPlacesGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTagsOnPlaces {
  const AggregateTagsOnPlaces({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateTagsOnPlaces.fromJson(Map json) => AggregateTagsOnPlaces(
        $count: json['_count'] is Map
            ? _i2.TagsOnPlacesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TagsOnPlacesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TagsOnPlacesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TagsOnPlacesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagsOnPlacesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TagsOnPlacesCountAggregateOutputType? $count;

  final _i2.TagsOnPlacesAvgAggregateOutputType? $avg;

  final _i2.TagsOnPlacesSumAggregateOutputType? $sum;

  final _i2.TagsOnPlacesMinAggregateOutputType? $min;

  final _i2.TagsOnPlacesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTagsOnPlacesCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsOnPlacesCountArgs({this.select});

  final _i2.TagsOnPlacesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsOnPlacesAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsOnPlacesAvgArgs({this.select});

  final _i2.TagsOnPlacesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsOnPlacesSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsOnPlacesSumArgs({this.select});

  final _i2.TagsOnPlacesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsOnPlacesMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsOnPlacesMinArgs({this.select});

  final _i2.TagsOnPlacesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsOnPlacesMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsOnPlacesMaxArgs({this.select});

  final _i2.TagsOnPlacesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTagsOnPlacesSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTagsOnPlacesSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTagsOnPlacesCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsOnPlacesAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsOnPlacesSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsOnPlacesMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTagsOnPlacesMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
