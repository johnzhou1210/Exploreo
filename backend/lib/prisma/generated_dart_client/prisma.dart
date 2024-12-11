// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
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
    this.usersOnTrips,
  });

  factory TripCountOutputType.fromJson(Map json) => TripCountOutputType(
        places: json['places'],
        users: json['users'],
        usersOnTrips: json['UsersOnTrips'],
      );

  final int? places;

  final int? users;

  final int? usersOnTrips;

  Map<String, dynamic> toJson() => {
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
      };
}

class UserCountOutputType {
  const UserCountOutputType({
    this.trips,
    this.usersOnTrips,
  });

  factory UserCountOutputType.fromJson(Map json) => UserCountOutputType(
        trips: json['trips'],
        usersOnTrips: json['UsersOnTrips'],
      );

  final int? trips;

  final int? usersOnTrips;

  Map<String, dynamic> toJson() => {
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
      };
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedUuidFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedUuidFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
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

  final _i1.PrismaUnion<String, _i2.NestedUuidFilter>? not;

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

class UuidFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UuidFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
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

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedUuidFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'mode': mode,
        'not': not,
      };
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

class NestedEnumLoginTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumLoginTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.LoginType, _i1.Reference<_i3.LoginType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? notIn;

  final _i1.PrismaUnion<_i3.LoginType, _i2.NestedEnumLoginTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumLoginTypeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumLoginTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.LoginType, _i1.Reference<_i3.LoginType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? notIn;

  final _i1.PrismaUnion<_i3.LoginType, _i2.NestedEnumLoginTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
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

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tagName;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.PlaceListRelationFilter? places;

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

class TagListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.TagWhereInput? every;

  final _i2.TagWhereInput? some;

  final _i2.TagWhereInput? none;

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
    this.notes,
    this.startDate,
    this.endDate,
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

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? tripId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.TripRelationFilter, _i2.TripWhereInput>? trip;

  final _i2.TagListRelationFilter? tags;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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

class NestedEnumRoleFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumRoleFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumRoleFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumRoleFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class UserRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.UserWhereInput? $is;

  final _i2.UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class UsersOnTripsWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereInput,
      Iterable<_i2.UsersOnTripsWhereInput>>? AND;

  final Iterable<_i2.UsersOnTripsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereInput,
      Iterable<_i2.UsersOnTripsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? userId;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? tripId;

  final _i1.PrismaUnion<_i2.EnumRoleFilter, _i3.Role>? role;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.TripRelationFilter, _i2.TripWhereInput>? trip;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
        'trip': trip,
      };
}

class UsersOnTripsListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.UsersOnTripsWhereInput? every;

  final _i2.UsersOnTripsWhereInput? some;

  final _i2.UsersOnTripsWhereInput? none;

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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? AND;

  final Iterable<_i2.TripWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isShared;

  final _i2.PlaceListRelationFilter? places;

  final _i2.UserListRelationFilter? users;

  final _i2.UsersOnTripsListRelationFilter? usersOnTrips;

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
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firebaseUid;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? password;

  final _i1.PrismaUnion<_i2.EnumLoginTypeFilter, _i3.LoginType>? loginType;

  final _i1.PrismaUnion<_i2.StringFilter, String>? providerId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? bio;

  final _i2.TripListRelationFilter? trips;

  final _i2.UsersOnTripsListRelationFilter? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.AND,
    this.OR,
    this.NOT,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
  });

  final String? id;

  final String? firebaseUid;

  final String? email;

  final String? username;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? password;

  final _i1.PrismaUnion<_i2.EnumLoginTypeFilter, _i3.LoginType>? loginType;

  final _i1.PrismaUnion<_i2.StringFilter, String>? providerId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? bio;

  final _i2.TripListRelationFilter? trips;

  final _i2.UsersOnTripsListRelationFilter? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
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

class UsersOnTripsOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsOrderByRelationAggregateInput({this.$count});

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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? imageUrl;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? notes;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? isShared;

  final _i2.PlaceOrderByRelationAggregateInput? places;

  final _i2.UserOrderByRelationAggregateInput? users;

  final _i2.UsersOnTripsOrderByRelationAggregateInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
      };
}

class TagOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagOrderByRelationAggregateInput({this.$count});

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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? notes;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? startDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? endDate;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.TripOrderByWithRelationInput? trip;

  final _i2.TagOrderByRelationAggregateInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.PlaceWhereInput, Iterable<_i2.PlaceWhereInput>>?
      AND;

  final Iterable<_i2.PlaceWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceWhereInput, Iterable<_i2.PlaceWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? tripId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.TripRelationFilter, _i2.TripWhereInput>? trip;

  final _i2.TagListRelationFilter? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
        'tags': tags,
      };
}

enum PlaceScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Place'),
  placeName<String>('placeName', 'Place'),
  description<String>('description', 'Place'),
  notes<String>('notes', 'Place'),
  startDate<DateTime>('startDate', 'Place'),
  endDate<DateTime>('endDate', 'Place'),
  tripId<String>('tripId', 'Place'),
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

  final _i2.PlaceOrderByRelationAggregateInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
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

  final String? id;

  final String? tagName;

  final _i1.PrismaUnion<_i2.TagWhereInput, Iterable<_i2.TagWhereInput>>? AND;

  final Iterable<_i2.TagWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TagWhereInput, Iterable<_i2.TagWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i2.PlaceListRelationFilter? places;

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

enum TagScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Tag'),
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

  final _i2.TagWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.TagOrderByWithRelationInput>,
      _i2.TagOrderByWithRelationInput>? orderBy;

  final _i2.TagWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.TagScalar, Iterable<_i2.TagScalar>>? distinct;

  final _i2.TagSelect? select;

  final _i2.TagInclude? include;

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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? AND;

  final Iterable<_i2.TripWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripWhereInput, Iterable<_i2.TripWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isShared;

  final _i2.PlaceListRelationFilter? places;

  final _i2.UserListRelationFilter? users;

  final _i2.UsersOnTripsListRelationFilter? usersOnTrips;

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
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
      };
}

enum TripScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Trip'),
  tripName<String>('tripName', 'Trip'),
  description<String>('description', 'Trip'),
  startDate<DateTime>('startDate', 'Trip'),
  endDate<DateTime>('endDate', 'Trip'),
  imageUrl<String>('imageUrl', 'Trip'),
  notes<String>('notes', 'Trip'),
  createdAt<DateTime>('createdAt', 'Trip'),
  updatedAt<DateTime>('updatedAt', 'Trip'),
  isShared<bool>('isShared', 'Trip');

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

class UsersOnTripsUserArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUserArgs({
    this.select,
    this.include,
  });

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class UsersOnTripsTripArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsTripArgs({
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

class UsersOnTripsSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsSelect({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  final bool? id;

  final bool? userId;

  final bool? tripId;

  final bool? role;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.UsersOnTripsUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.UsersOnTripsTripArgs>? trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
        'trip': trip,
      };
}

class UsersOnTripsInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsInclude({
    this.user,
    this.trip,
  });

  final _i1.PrismaUnion<bool, _i2.UsersOnTripsUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.UsersOnTripsTripArgs>? trip;

  @override
  Map<String, dynamic> toJson() => {
        'user': user,
        'trip': trip,
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
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firebaseUid;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? password;

  final _i2.SortOrder? loginType;

  final _i2.SortOrder? providerId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? profilePictureUrl;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? bio;

  final _i2.TripOrderByRelationAggregateInput? trips;

  final _i2.UsersOnTripsOrderByRelationAggregateInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
      };
}

class UsersOnTripsOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsOrderByWithRelationInput({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? role;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.UserOrderByWithRelationInput? user;

  final _i2.TripOrderByWithRelationInput? trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
        'trip': trip,
      };
}

class UsersOnTripsWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereInput,
      Iterable<_i2.UsersOnTripsWhereInput>>? AND;

  final Iterable<_i2.UsersOnTripsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereInput,
      Iterable<_i2.UsersOnTripsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? userId;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? tripId;

  final _i1.PrismaUnion<_i2.EnumRoleFilter, _i3.Role>? role;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.TripRelationFilter, _i2.TripWhereInput>? trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
        'trip': trip,
      };
}

enum UsersOnTripsScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'UsersOnTrips'),
  userId<String>('userId', 'UsersOnTrips'),
  tripId<String>('tripId', 'UsersOnTrips'),
  role<_i3.Role>('role', 'UsersOnTrips'),
  createdAt<DateTime>('createdAt', 'UsersOnTrips'),
  updatedAt<DateTime>('updatedAt', 'UsersOnTrips');

  const UsersOnTripsScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserUsersOnTripsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUsersOnTripsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.UsersOnTripsWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.UsersOnTripsOrderByWithRelationInput>,
      _i2.UsersOnTripsOrderByWithRelationInput>? orderBy;

  final _i2.UsersOnTripsWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1
      .PrismaUnion<_i2.UsersOnTripsScalar, Iterable<_i2.UsersOnTripsScalar>>?
      distinct;

  final _i2.UsersOnTripsSelect? select;

  final _i2.UsersOnTripsInclude? include;

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
  const UserCountOutputTypeSelect({
    this.trips,
    this.usersOnTrips,
  });

  final bool? trips;

  final bool? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
      };
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
    this.usersOnTrips,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UserTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.UserUsersOnTripsArgs>? usersOnTrips;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
        '_count': $count,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'User'),
  firebaseUid<String>('firebaseUid', 'User'),
  email<String>('email', 'User'),
  username<String>('username', 'User'),
  createdAt<DateTime>('createdAt', 'User'),
  updatedAt<DateTime>('updatedAt', 'User'),
  password<String>('password', 'User'),
  loginType<_i3.LoginType>('loginType', 'User'),
  providerId<String>('providerId', 'User'),
  profilePictureUrl<String>('profilePictureUrl', 'User'),
  bio<String>('bio', 'User');

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

class TripUsersOnTripsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUsersOnTripsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.UsersOnTripsWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.UsersOnTripsOrderByWithRelationInput>,
      _i2.UsersOnTripsOrderByWithRelationInput>? orderBy;

  final _i2.UsersOnTripsWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1
      .PrismaUnion<_i2.UsersOnTripsScalar, Iterable<_i2.UsersOnTripsScalar>>?
      distinct;

  final _i2.UsersOnTripsSelect? select;

  final _i2.UsersOnTripsInclude? include;

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
    this.usersOnTrips,
  });

  final bool? places;

  final bool? users;

  final bool? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.usersOnTrips,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.TripPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TripUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.TripUsersOnTripsArgs>? usersOnTrips;

  final _i1.PrismaUnion<bool, _i2.TripCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
        '_count': $count,
      };
}

class PlaceSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceSelect({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
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

  final bool? notes;

  final bool? startDate;

  final bool? endDate;

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
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
    this.$count,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? imageUrl;

  final bool? notes;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? isShared;

  final _i1.PrismaUnion<bool, _i2.TripPlacesArgs>? places;

  final _i1.PrismaUnion<bool, _i2.TripUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.TripUsersOnTripsArgs>? usersOnTrips;

  final _i1.PrismaUnion<bool, _i2.TripCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
        '_count': $count,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
    this.$count,
  });

  final bool? id;

  final bool? firebaseUid;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? password;

  final bool? loginType;

  final bool? providerId;

  final bool? profilePictureUrl;

  final bool? bio;

  final _i1.PrismaUnion<bool, _i2.UserTripsArgs>? trips;

  final _i1.PrismaUnion<bool, _i2.UserUsersOnTripsArgs>? usersOnTrips;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
        '_count': $count,
      };
}

class TagCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateWithoutPlacesInput({
    this.id,
    required this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

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

class TagUncheckedCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedCreateWithoutPlacesInput({
    this.id,
    required this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

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

class TagCreateNestedManyWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateNestedManyWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TagCreateWithoutPlacesInput,
      _i1.PrismaUnion<
          Iterable<_i2.TagCreateWithoutPlacesInput>,
          _i1.PrismaUnion<_i2.TagUncheckedCreateWithoutPlacesInput,
              Iterable<_i2.TagUncheckedCreateWithoutPlacesInput>>>>? create;

  final _i1.PrismaUnion<_i2.TagCreateOrConnectWithoutPlacesInput,
      Iterable<_i2.TagCreateOrConnectWithoutPlacesInput>>? connectOrCreate;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlaceCreateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateWithoutTripInput({
    this.id,
    required this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagCreateNestedManyWithoutPlacesInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class TagUncheckedCreateNestedManyWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedCreateNestedManyWithoutPlacesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TagCreateWithoutPlacesInput,
      _i1.PrismaUnion<
          Iterable<_i2.TagCreateWithoutPlacesInput>,
          _i1.PrismaUnion<_i2.TagUncheckedCreateWithoutPlacesInput,
              Iterable<_i2.TagUncheckedCreateWithoutPlacesInput>>>>? create;

  final _i1.PrismaUnion<_i2.TagCreateOrConnectWithoutPlacesInput,
      Iterable<_i2.TagCreateOrConnectWithoutPlacesInput>>? connectOrCreate;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlaceUncheckedCreateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedCreateWithoutTripInput({
    this.id,
    required this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagUncheckedCreateNestedManyWithoutPlacesInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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

class UserCreateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutUsersOnTripsInput({
    this.id,
    required this.firebaseUid,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    required this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
  });

  final String? id;

  final String firebaseUid;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? password;

  final _i3.LoginType? loginType;

  final String providerId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profilePictureUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? bio;

  final _i2.TripCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
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

class UsersOnTripsUncheckedCreateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedCreateWithoutTripInput({
    this.id,
    required this.userId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String userId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsCreateOrConnectWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateOrConnectWithoutTripInput({
    required this.where,
    required this.create,
  });

  final _i2.UsersOnTripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateWithoutTripInput,
      _i2.UsersOnTripsUncheckedCreateWithoutTripInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsersOnTripsCreateManyTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateManyTripInput({
    this.id,
    required this.userId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String userId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsCreateManyTripInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateManyTripInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateManyTripInput,
      Iterable<_i2.UsersOnTripsCreateManyTripInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class UsersOnTripsUncheckedCreateNestedManyWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedCreateNestedManyWithoutTripInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.UsersOnTripsCreateWithoutTripInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutTripInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutTripInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutTripInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutTripInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutTripInput>>?
      connectOrCreate;

  final _i2.UsersOnTripsCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.usersOnTrips,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.PlaceUncheckedCreateNestedManyWithoutTripInput? places;

  final _i2.UsersOnTripsUncheckedCreateNestedManyWithoutTripInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'UsersOnTrips': usersOnTrips,
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

class UserUncheckedCreateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutUsersOnTripsInput({
    this.id,
    required this.firebaseUid,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    required this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
  });

  final String? id;

  final String firebaseUid;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? password;

  final _i3.LoginType? loginType;

  final String providerId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profilePictureUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? bio;

  final _i2.TripUncheckedCreateNestedManyWithoutUsersInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
      };
}

class UserCreateOrConnectWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutUsersOnTripsInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserCreateWithoutUsersOnTripsInput,
      _i2.UserUncheckedCreateWithoutUsersOnTripsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UserCreateNestedOneWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutUsersOnTripsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutUsersOnTripsInput,
      _i2.UserUncheckedCreateWithoutUsersOnTripsInput>? create;

  final _i2.UserCreateOrConnectWithoutUsersOnTripsInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UsersOnTripsCreateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateWithoutTripInput({
    this.id,
    this.role,
    this.createdAt,
    this.updatedAt,
    required this.user,
  });

  final String? id;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.UserCreateNestedOneWithoutUsersOnTripsInput user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
      };
}

class UsersOnTripsCreateNestedManyWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateNestedManyWithoutTripInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.UsersOnTripsCreateWithoutTripInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutTripInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutTripInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutTripInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutTripInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutTripInput>>?
      connectOrCreate;

  final _i2.UsersOnTripsCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

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
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.usersOnTrips,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.PlaceCreateNestedManyWithoutTripInput? places;

  final _i2.UsersOnTripsCreateNestedManyWithoutTripInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'UsersOnTrips': usersOnTrips,
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

class UserCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutTripsInput({
    this.id,
    required this.firebaseUid,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    required this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.usersOnTrips,
  });

  final String? id;

  final String firebaseUid;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? password;

  final _i3.LoginType? loginType;

  final String providerId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profilePictureUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? bio;

  final _i2.UsersOnTripsCreateNestedManyWithoutUserInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'UsersOnTrips': usersOnTrips,
      };
}

class UsersOnTripsUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedCreateWithoutUserInput({
    this.id,
    required this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String tripId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.UsersOnTripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateWithoutUserInput,
      _i2.UsersOnTripsUncheckedCreateWithoutUserInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsersOnTripsCreateManyUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateManyUserInput({
    this.id,
    required this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String tripId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsCreateManyUserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateManyUserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateManyUserInput,
      Iterable<_i2.UsersOnTripsCreateManyUserInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class UsersOnTripsUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.UsersOnTripsCreateWithoutUserInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutUserInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutUserInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutUserInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutUserInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutUserInput>>?
      connectOrCreate;

  final _i2.UsersOnTripsCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UserUncheckedCreateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutTripsInput({
    this.id,
    required this.firebaseUid,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    required this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.usersOnTrips,
  });

  final String? id;

  final String firebaseUid;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? password;

  final _i3.LoginType? loginType;

  final String providerId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profilePictureUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? bio;

  final _i2.UsersOnTripsUncheckedCreateNestedManyWithoutUserInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'UsersOnTrips': usersOnTrips,
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

class TripCreateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateWithoutUsersOnTripsInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.PlaceCreateNestedManyWithoutTripInput? places;

  final _i2.UserCreateNestedManyWithoutTripsInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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

class TripUncheckedCreateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedCreateWithoutUsersOnTripsInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.PlaceUncheckedCreateNestedManyWithoutTripInput? places;

  final _i2.UserUncheckedCreateNestedManyWithoutTripsInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
      };
}

class TripCreateOrConnectWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateOrConnectWithoutUsersOnTripsInput({
    required this.where,
    required this.create,
  });

  final _i2.TripWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TripCreateWithoutUsersOnTripsInput,
      _i2.TripUncheckedCreateWithoutUsersOnTripsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TripCreateNestedOneWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateNestedOneWithoutUsersOnTripsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TripCreateWithoutUsersOnTripsInput,
      _i2.TripUncheckedCreateWithoutUsersOnTripsInput>? create;

  final _i2.TripCreateOrConnectWithoutUsersOnTripsInput? connectOrCreate;

  final _i2.TripWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UsersOnTripsCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateWithoutUserInput({
    this.id,
    this.role,
    this.createdAt,
    this.updatedAt,
    required this.trip,
  });

  final String? id;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripCreateNestedOneWithoutUsersOnTripsInput trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
      };
}

class UsersOnTripsCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.UsersOnTripsCreateWithoutUserInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutUserInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutUserInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutUserInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutUserInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutUserInput>>?
      connectOrCreate;

  final _i2.UsersOnTripsCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    this.id,
    required this.firebaseUid,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    required this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
  });

  final String? id;

  final String firebaseUid;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? password;

  final _i3.LoginType? loginType;

  final String providerId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profilePictureUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? bio;

  final _i2.TripCreateNestedManyWithoutUsersInput? trips;

  final _i2.UsersOnTripsCreateNestedManyWithoutUserInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.firebaseUid,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    required this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
  });

  final String? id;

  final String firebaseUid;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? password;

  final _i3.LoginType? loginType;

  final String providerId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profilePictureUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? bio;

  final _i2.TripUncheckedCreateNestedManyWithoutUsersInput? trips;

  final _i2.UsersOnTripsUncheckedCreateNestedManyWithoutUserInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
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
    required this.firebaseUid,
    required this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    required this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final String? id;

  final String firebaseUid;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? password;

  final _i3.LoginType? loginType;

  final String providerId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? profilePictureUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class CreateManyUserAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUserAndReturnOutputTypeSelect({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final bool? id;

  final bool? firebaseUid;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? password;

  final bool? loginType;

  final bool? providerId;

  final bool? profilePictureUrl;

  final bool? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
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

class EnumLoginTypeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumLoginTypeFieldUpdateOperationsInput({this.set});

  final _i3.LoginType? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

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

class TagUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateWithoutPlacesInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

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

class TagUncheckedUpdateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedUpdateWithoutPlacesInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

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

class TagUpsertWithWhereUniqueWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpsertWithWhereUniqueWithoutPlacesInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagUpdateWithoutPlacesInput,
      _i2.TagUncheckedUpdateWithoutPlacesInput> update;

  final _i1.PrismaUnion<_i2.TagCreateWithoutPlacesInput,
      _i2.TagUncheckedCreateWithoutPlacesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class TagUpdateWithWhereUniqueWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateWithWhereUniqueWithoutPlacesInput({
    required this.where,
    required this.data,
  });

  final _i2.TagWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TagUpdateWithoutPlacesInput,
      _i2.TagUncheckedUpdateWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagScalarWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1
      .PrismaUnion<_i2.TagScalarWhereInput, Iterable<_i2.TagScalarWhereInput>>?
      AND;

  final Iterable<_i2.TagScalarWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.TagScalarWhereInput, Iterable<_i2.TagScalarWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tagName;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

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

class TagUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateManyMutationInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

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

class TagUncheckedUpdateManyWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedUpdateManyWithoutPlacesInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

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

class TagUpdateManyWithWhereWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateManyWithWhereWithoutPlacesInput({
    required this.where,
    required this.data,
  });

  final _i2.TagScalarWhereInput where;

  final _i1.PrismaUnion<_i2.TagUpdateManyMutationInput,
      _i2.TagUncheckedUpdateManyWithoutPlacesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TagUpdateManyWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateManyWithoutPlacesNestedInput({
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
      _i2.TagCreateWithoutPlacesInput,
      _i1.PrismaUnion<
          Iterable<_i2.TagCreateWithoutPlacesInput>,
          _i1.PrismaUnion<_i2.TagUncheckedCreateWithoutPlacesInput,
              Iterable<_i2.TagUncheckedCreateWithoutPlacesInput>>>>? create;

  final _i1.PrismaUnion<_i2.TagCreateOrConnectWithoutPlacesInput,
      Iterable<_i2.TagCreateOrConnectWithoutPlacesInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TagUpsertWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.TagUpsertWithWhereUniqueWithoutPlacesInput>>? upsert;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      set;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      disconnect;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      delete;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      connect;

  final _i1.PrismaUnion<_i2.TagUpdateWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.TagUpdateWithWhereUniqueWithoutPlacesInput>>? update;

  final _i1.PrismaUnion<_i2.TagUpdateManyWithWhereWithoutPlacesInput,
      Iterable<_i2.TagUpdateManyWithWhereWithoutPlacesInput>>? updateMany;

  final _i1
      .PrismaUnion<_i2.TagScalarWhereInput, Iterable<_i2.TagScalarWhereInput>>?
      deleteMany;

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

class PlaceUpdateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateWithoutTripInput({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagUpdateManyWithoutPlacesNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'tags': tags,
      };
}

class TagUncheckedUpdateManyWithoutPlacesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedUpdateManyWithoutPlacesNestedInput({
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
      _i2.TagCreateWithoutPlacesInput,
      _i1.PrismaUnion<
          Iterable<_i2.TagCreateWithoutPlacesInput>,
          _i1.PrismaUnion<_i2.TagUncheckedCreateWithoutPlacesInput,
              Iterable<_i2.TagUncheckedCreateWithoutPlacesInput>>>>? create;

  final _i1.PrismaUnion<_i2.TagCreateOrConnectWithoutPlacesInput,
      Iterable<_i2.TagCreateOrConnectWithoutPlacesInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TagUpsertWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.TagUpsertWithWhereUniqueWithoutPlacesInput>>? upsert;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      set;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      disconnect;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      delete;

  final _i1
      .PrismaUnion<_i2.TagWhereUniqueInput, Iterable<_i2.TagWhereUniqueInput>>?
      connect;

  final _i1.PrismaUnion<_i2.TagUpdateWithWhereUniqueWithoutPlacesInput,
      Iterable<_i2.TagUpdateWithWhereUniqueWithoutPlacesInput>>? update;

  final _i1.PrismaUnion<_i2.TagUpdateManyWithWhereWithoutPlacesInput,
      Iterable<_i2.TagUpdateManyWithWhereWithoutPlacesInput>>? updateMany;

  final _i1
      .PrismaUnion<_i2.TagScalarWhereInput, Iterable<_i2.TagScalarWhereInput>>?
      deleteMany;

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

class PlaceUncheckedUpdateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateWithoutTripInput({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagUncheckedUpdateManyWithoutPlacesNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? AND;

  final Iterable<_i2.PlaceScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? tripId;

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
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateManyMutationInput({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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

class EnumRoleFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumRoleFieldUpdateOperationsInput({this.set});

  final _i3.Role? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class UserUpdateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutUsersOnTripsInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  final _i2.TripUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
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

class UsersOnTripsUncheckedUpdateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateWithoutTripInput({
    this.id,
    this.userId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsUpdateWithWhereUniqueWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateWithWhereUniqueWithoutTripInput({
    required this.where,
    required this.data,
  });

  final _i2.UsersOnTripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithoutTripInput,
      _i2.UsersOnTripsUncheckedUpdateWithoutTripInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersOnTripsScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereInput,
      Iterable<_i2.UsersOnTripsScalarWhereInput>>? AND;

  final Iterable<_i2.UsersOnTripsScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereInput,
      Iterable<_i2.UsersOnTripsScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? userId;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? tripId;

  final _i1.PrismaUnion<_i2.EnumRoleFilter, _i3.Role>? role;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateManyMutationInput({
    this.id,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsUncheckedUpdateManyWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateManyWithoutTripInput({
    this.id,
    this.userId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsUpdateManyWithWhereWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateManyWithWhereWithoutTripInput({
    required this.where,
    required this.data,
  });

  final _i2.UsersOnTripsScalarWhereInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateManyMutationInput,
      _i2.UsersOnTripsUncheckedUpdateManyWithoutTripInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersOnTripsUncheckedUpdateManyWithoutTripNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateManyWithoutTripNestedInput({
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
          _i2.UsersOnTripsCreateWithoutTripInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutTripInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutTripInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutTripInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutTripInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutTripInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutTripInput,
      Iterable<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutTripInput>>? upsert;

  final _i2.UsersOnTripsCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutTripInput,
      Iterable<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutTripInput>>? update;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateManyWithWhereWithoutTripInput,
          Iterable<_i2.UsersOnTripsUpdateManyWithWhereWithoutTripInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereInput,
      Iterable<_i2.UsersOnTripsScalarWhereInput>>? deleteMany;

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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.PlaceUncheckedUpdateManyWithoutTripNestedInput? places;

  final _i2.UsersOnTripsUncheckedUpdateManyWithoutTripNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'UsersOnTrips': usersOnTrips,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i1.PrismaUnion<_i2.TripScalarWhereInput,
      Iterable<_i2.TripScalarWhereInput>>? AND;

  final Iterable<_i2.TripScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TripScalarWhereInput,
      Iterable<_i2.TripScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isShared;

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
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
      };
}

class TripUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateManyMutationInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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

class UserUncheckedUpdateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutUsersOnTripsInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  final _i2.TripUncheckedUpdateManyWithoutUsersNestedInput? trips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
      };
}

class UserUpsertWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutUsersOnTripsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UserUpdateWithoutUsersOnTripsInput,
      _i2.UserUncheckedUpdateWithoutUsersOnTripsInput> update;

  final _i1.PrismaUnion<_i2.UserCreateWithoutUsersOnTripsInput,
      _i2.UserUncheckedCreateWithoutUsersOnTripsInput> create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UserUpdateToOneWithWhereWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutUsersOnTripsInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<_i2.UserUpdateWithoutUsersOnTripsInput,
      _i2.UserUncheckedUpdateWithoutUsersOnTripsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UserUpdateOneRequiredWithoutUsersOnTripsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutUsersOnTripsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutUsersOnTripsInput,
      _i2.UserUncheckedCreateWithoutUsersOnTripsInput>? create;

  final _i2.UserCreateOrConnectWithoutUsersOnTripsInput? connectOrCreate;

  final _i2.UserUpsertWithoutUsersOnTripsInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UserUpdateToOneWithWhereWithoutUsersOnTripsInput,
      _i1.PrismaUnion<_i2.UserUpdateWithoutUsersOnTripsInput,
          _i2.UserUncheckedUpdateWithoutUsersOnTripsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class UsersOnTripsUpdateWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateWithoutTripInput({
    this.id,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.UserUpdateOneRequiredWithoutUsersOnTripsNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
      };
}

class UsersOnTripsUpsertWithWhereUniqueWithoutTripInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpsertWithWhereUniqueWithoutTripInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.UsersOnTripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithoutTripInput,
      _i2.UsersOnTripsUncheckedUpdateWithoutTripInput> update;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateWithoutTripInput,
      _i2.UsersOnTripsUncheckedCreateWithoutTripInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class UsersOnTripsUpdateManyWithoutTripNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateManyWithoutTripNestedInput({
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
          _i2.UsersOnTripsCreateWithoutTripInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutTripInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutTripInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutTripInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutTripInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutTripInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutTripInput,
      Iterable<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutTripInput>>? upsert;

  final _i2.UsersOnTripsCreateManyTripInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutTripInput,
      Iterable<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutTripInput>>? update;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateManyWithWhereWithoutTripInput,
          Iterable<_i2.UsersOnTripsUpdateManyWithWhereWithoutTripInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereInput,
      Iterable<_i2.UsersOnTripsScalarWhereInput>>? deleteMany;

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
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.PlaceUpdateManyWithoutTripNestedInput? places;

  final _i2.UsersOnTripsUpdateManyWithoutTripNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'UsersOnTrips': usersOnTrips,
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

class UserUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutTripsInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  final _i2.UsersOnTripsUpdateManyWithoutUserNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'UsersOnTrips': usersOnTrips,
      };
}

class UsersOnTripsUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateWithoutUserInput({
    this.id,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.UsersOnTripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithoutUserInput,
      _i2.UsersOnTripsUncheckedUpdateWithoutUserInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersOnTripsUncheckedUpdateManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateManyWithoutUserInput({
    this.id,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsUpdateManyWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.UsersOnTripsScalarWhereInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateManyMutationInput,
      _i2.UsersOnTripsUncheckedUpdateManyWithoutUserInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersOnTripsUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateManyWithoutUserNestedInput({
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
          _i2.UsersOnTripsCreateWithoutUserInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutUserInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutUserInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutUserInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutUserInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutUserInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutUserInput,
      Iterable<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutUserInput>>? upsert;

  final _i2.UsersOnTripsCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutUserInput,
      Iterable<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutUserInput>>? update;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateManyWithWhereWithoutUserInput,
          Iterable<_i2.UsersOnTripsUpdateManyWithWhereWithoutUserInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereInput,
      Iterable<_i2.UsersOnTripsScalarWhereInput>>? deleteMany;

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

class UserUncheckedUpdateWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutTripsInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  final _i2.UsersOnTripsUncheckedUpdateManyWithoutUserNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'UsersOnTrips': usersOnTrips,
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
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereInput,
      Iterable<_i2.UserScalarWhereInput>>? AND;

  final Iterable<_i2.UserScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereInput,
      Iterable<_i2.UserScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firebaseUid;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? password;

  final _i1.PrismaUnion<_i2.EnumLoginTypeFilter, _i3.LoginType>? loginType;

  final _i1.PrismaUnion<_i2.StringFilter, String>? providerId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? bio;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserUncheckedUpdateManyWithoutTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyWithoutTripsInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
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

class TripUpdateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateWithoutUsersOnTripsInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.PlaceUpdateManyWithoutTripNestedInput? places;

  final _i2.UserUpdateManyWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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

class TripUncheckedUpdateWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUncheckedUpdateWithoutUsersOnTripsInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.PlaceUncheckedUpdateManyWithoutTripNestedInput? places;

  final _i2.UserUncheckedUpdateManyWithoutTripsNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
      };
}

class TripUpsertWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpsertWithoutUsersOnTripsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.TripUpdateWithoutUsersOnTripsInput,
      _i2.TripUncheckedUpdateWithoutUsersOnTripsInput> update;

  final _i1.PrismaUnion<_i2.TripCreateWithoutUsersOnTripsInput,
      _i2.TripUncheckedCreateWithoutUsersOnTripsInput> create;

  final _i2.TripWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class TripUpdateToOneWithWhereWithoutUsersOnTripsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateToOneWithWhereWithoutUsersOnTripsInput({
    this.where,
    required this.data,
  });

  final _i2.TripWhereInput? where;

  final _i1.PrismaUnion<_i2.TripUpdateWithoutUsersOnTripsInput,
      _i2.TripUncheckedUpdateWithoutUsersOnTripsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TripUpdateOneRequiredWithoutUsersOnTripsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateOneRequiredWithoutUsersOnTripsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TripCreateWithoutUsersOnTripsInput,
      _i2.TripUncheckedCreateWithoutUsersOnTripsInput>? create;

  final _i2.TripCreateOrConnectWithoutUsersOnTripsInput? connectOrCreate;

  final _i2.TripUpsertWithoutUsersOnTripsInput? upsert;

  final _i2.TripWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TripUpdateToOneWithWhereWithoutUsersOnTripsInput,
      _i1.PrismaUnion<_i2.TripUpdateWithoutUsersOnTripsInput,
          _i2.TripUncheckedUpdateWithoutUsersOnTripsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class UsersOnTripsUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateWithoutUserInput({
    this.id,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.trip,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TripUpdateOneRequiredWithoutUsersOnTripsNestedInput? trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'trip': trip,
      };
}

class UsersOnTripsUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.UsersOnTripsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithoutUserInput,
      _i2.UsersOnTripsUncheckedUpdateWithoutUserInput> update;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateWithoutUserInput,
      _i2.UsersOnTripsUncheckedCreateWithoutUserInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class UsersOnTripsUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateManyWithoutUserNestedInput({
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
          _i2.UsersOnTripsCreateWithoutUserInput,
          _i1.PrismaUnion<
              Iterable<_i2.UsersOnTripsCreateWithoutUserInput>,
              _i1.PrismaUnion<_i2.UsersOnTripsUncheckedCreateWithoutUserInput,
                  Iterable<_i2.UsersOnTripsUncheckedCreateWithoutUserInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.UsersOnTripsCreateOrConnectWithoutUserInput,
          Iterable<_i2.UsersOnTripsCreateOrConnectWithoutUserInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutUserInput,
      Iterable<_i2.UsersOnTripsUpsertWithWhereUniqueWithoutUserInput>>? upsert;

  final _i2.UsersOnTripsCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.UsersOnTripsWhereUniqueInput,
      Iterable<_i2.UsersOnTripsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutUserInput,
      Iterable<_i2.UsersOnTripsUpdateWithWhereUniqueWithoutUserInput>>? update;

  final _i1.PrismaUnion<_i2.UsersOnTripsUpdateManyWithWhereWithoutUserInput,
          Iterable<_i2.UsersOnTripsUpdateManyWithWhereWithoutUserInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereInput,
      Iterable<_i2.UsersOnTripsScalarWhereInput>>? deleteMany;

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

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  final _i2.TripUpdateManyWithoutUsersNestedInput? trips;

  final _i2.UsersOnTripsUpdateManyWithoutUserNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  final _i2.TripUncheckedUpdateManyWithoutUsersNestedInput? trips;

  final _i2.UsersOnTripsUncheckedUpdateManyWithoutUserNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips,
        'UsersOnTrips': usersOnTrips,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firebaseUid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? password;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.EnumLoginTypeFieldUpdateOperationsInput>?
      loginType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      providerId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        firebaseUid: json['firebaseUid'],
        email: json['email'],
        username: json['username'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        password: json['password'],
        loginType: json['loginType'],
        providerId: json['providerId'],
        profilePictureUrl: json['profilePictureUrl'],
        bio: json['bio'],
        $all: json['_all'],
      );

  final int? id;

  final int? firebaseUid;

  final int? email;

  final int? username;

  final int? createdAt;

  final int? updatedAt;

  final int? password;

  final int? loginType;

  final int? providerId;

  final int? profilePictureUrl;

  final int? bio;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        '_all': $all,
      };
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        firebaseUid: json['firebaseUid'],
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
        password: json['password'],
        loginType: json['loginType'] != null
            ? _i3.LoginType.values
                .firstWhere((e) => e.name == json['loginType'])
            : null,
        providerId: json['providerId'],
        profilePictureUrl: json['profilePictureUrl'],
        bio: json['bio'],
      );

  final String? id;

  final String? firebaseUid;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? password;

  final _i3.LoginType? loginType;

  final String? providerId;

  final String? profilePictureUrl;

  final String? bio;

  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'password': password,
        'loginType': loginType?.name,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        firebaseUid: json['firebaseUid'],
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
        password: json['password'],
        loginType: json['loginType'] != null
            ? _i3.LoginType.values
                .firstWhere((e) => e.name == json['loginType'])
            : null,
        providerId: json['providerId'],
        profilePictureUrl: json['profilePictureUrl'],
        bio: json['bio'],
      );

  final String? id;

  final String? firebaseUid;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? password;

  final _i3.LoginType? loginType;

  final String? providerId;

  final String? profilePictureUrl;

  final String? bio;

  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'password': password,
        'loginType': loginType?.name,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        firebaseUid: json['firebaseUid'],
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
        password: json['password'],
        loginType: json['loginType'] != null
            ? _i3.LoginType.values
                .firstWhere((e) => e.name == json['loginType'])
            : null,
        providerId: json['providerId'],
        profilePictureUrl: json['profilePictureUrl'],
        bio: json['bio'],
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? firebaseUid;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? password;

  final _i3.LoginType? loginType;

  final String? providerId;

  final String? profilePictureUrl;

  final String? bio;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'password': password,
        'loginType': loginType?.name,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firebaseUid;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? password;

  final _i2.SortOrder? loginType;

  final _i2.SortOrder? providerId;

  final _i2.SortOrder? profilePictureUrl;

  final _i2.SortOrder? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firebaseUid;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? password;

  final _i2.SortOrder? loginType;

  final _i2.SortOrder? providerId;

  final _i2.SortOrder? profilePictureUrl;

  final _i2.SortOrder? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firebaseUid;

  final _i2.SortOrder? email;

  final _i2.SortOrder? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? password;

  final _i2.SortOrder? loginType;

  final _i2.SortOrder? providerId;

  final _i2.SortOrder? profilePictureUrl;

  final _i2.SortOrder? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firebaseUid;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? username;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? password;

  final _i2.SortOrder? loginType;

  final _i2.SortOrder? providerId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? profilePictureUrl;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? bio;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        '_count': $count,
        '_max': $max,
        '_min': $min,
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

class NestedUuidWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedUuidWithAggregatesFilter({
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

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i2.NestedUuidWithAggregatesFilter>? not;

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
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UuidWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UuidWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
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

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedUuidWithAggregatesFilter>? not;

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
        'mode': mode,
        'not': not,
        '_count': $count,
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

class NestedEnumLoginTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumLoginTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.LoginType, _i1.Reference<_i3.LoginType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? notIn;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.NestedEnumLoginTypeWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumLoginTypeFilter? $min;

  final _i2.NestedEnumLoginTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumLoginTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumLoginTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.LoginType, _i1.Reference<_i3.LoginType>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.LoginType>,
      _i1.Reference<Iterable<_i3.LoginType>>>? notIn;

  final _i1
      .PrismaUnion<_i3.LoginType, _i2.NestedEnumLoginTypeWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumLoginTypeFilter? $min;

  final _i2.NestedEnumLoginTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
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
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? firebaseUid;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? username;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? password;

  final _i1.PrismaUnion<_i2.EnumLoginTypeWithAggregatesFilter, _i3.LoginType>?
      loginType;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? providerId;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? profilePictureUrl;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? bio;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.$all,
  });

  final bool? id;

  final bool? firebaseUid;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? password;

  final bool? loginType;

  final bool? providerId;

  final bool? profilePictureUrl;

  final bool? bio;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
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

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final bool? id;

  final bool? firebaseUid;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? password;

  final bool? loginType;

  final bool? providerId;

  final bool? profilePictureUrl;

  final bool? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
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
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  final bool? id;

  final bool? firebaseUid;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? password;

  final bool? loginType;

  final bool? providerId;

  final bool? profilePictureUrl;

  final bool? bio;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
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
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? firebaseUid;

  final bool? email;

  final bool? username;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? password;

  final bool? loginType;

  final bool? providerId;

  final bool? profilePictureUrl;

  final bool? bio;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'password': password,
        'loginType': loginType,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
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
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class TripCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.PlaceCreateNestedManyWithoutTripInput? places;

  final _i2.UserCreateNestedManyWithoutTripsInput? users;

  final _i2.UsersOnTripsCreateNestedManyWithoutTripInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.PlaceUncheckedCreateNestedManyWithoutTripInput? places;

  final _i2.UserUncheckedCreateNestedManyWithoutTripsInput? users;

  final _i2.UsersOnTripsUncheckedCreateNestedManyWithoutTripInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
      };
}

class TripCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateManyInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? imageUrl;

  final bool? notes;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
      };
}

class TripUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripUpdateInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.PlaceUpdateManyWithoutTripNestedInput? places;

  final _i2.UserUpdateManyWithoutTripsNestedInput? users;

  final _i2.UsersOnTripsUpdateManyWithoutTripNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.PlaceUncheckedUpdateManyWithoutTripNestedInput? places;

  final _i2.UserUncheckedUpdateManyWithoutTripsNestedInput? users;

  final _i2.UsersOnTripsUncheckedUpdateManyWithoutTripNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'places': places,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
      };
}

class TripCountAggregateOutputType {
  const TripCountAggregateOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.$all,
  });

  factory TripCountAggregateOutputType.fromJson(Map json) =>
      TripCountAggregateOutputType(
        id: json['id'],
        tripName: json['tripName'],
        description: json['description'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        imageUrl: json['imageUrl'],
        notes: json['notes'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        isShared: json['isShared'],
        $all: json['_all'],
      );

  final int? id;

  final int? tripName;

  final int? description;

  final int? startDate;

  final int? endDate;

  final int? imageUrl;

  final int? notes;

  final int? createdAt;

  final int? updatedAt;

  final int? isShared;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        '_all': $all,
      };
}

class TripMinAggregateOutputType {
  const TripMinAggregateOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
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
        imageUrl: json['imageUrl'],
        notes: json['notes'],
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
        isShared: json['isShared'],
      );

  final String? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? imageUrl;

  final String? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'isShared': isShared,
      };
}

class TripMaxAggregateOutputType {
  const TripMaxAggregateOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
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
        imageUrl: json['imageUrl'],
        notes: json['notes'],
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
        isShared: json['isShared'],
      );

  final String? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? imageUrl;

  final String? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'isShared': isShared,
      };
}

class TripGroupByOutputType {
  const TripGroupByOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.$count,
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
        imageUrl: json['imageUrl'],
        notes: json['notes'],
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
        isShared: json['isShared'],
        $count: json['_count'] is Map
            ? _i2.TripCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TripMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TripMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? imageUrl;

  final String? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.TripCountAggregateOutputType? $count;

  final _i2.TripMinAggregateOutputType? $min;

  final _i2.TripMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'isShared': isShared,
        '_count': $count?.toJson(),
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
      };
}

class TripMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripMaxOrderByAggregateInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? imageUrl;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
      };
}

class TripOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripOrderByWithAggregationInput({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tripName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? imageUrl;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? notes;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? isShared;

  final _i2.TripCountOrderByAggregateInput? $count;

  final _i2.TripMaxOrderByAggregateInput? $max;

  final _i2.TripMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final _i1.PrismaUnion<_i2.TripScalarWhereWithAggregatesInput,
      Iterable<_i2.TripScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TripScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TripScalarWhereWithAggregatesInput,
      Iterable<_i2.TripScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? tripName;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? endDate;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? isShared;

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
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.$all,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? imageUrl;

  final bool? notes;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? isShared;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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

class TripMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripMinAggregateOutputTypeSelect({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? imageUrl;

  final bool? notes;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? imageUrl;

  final bool? notes;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? isShared;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? tripName;

  final bool? description;

  final bool? startDate;

  final bool? endDate;

  final bool? imageUrl;

  final bool? notes;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? isShared;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TripGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTrip {
  const AggregateTrip({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateTrip.fromJson(Map json) => AggregateTrip(
        $count: json['_count'] is Map
            ? _i2.TripCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TripMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TripMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TripCountAggregateOutputType? $count;

  final _i2.TripMinAggregateOutputType? $min;

  final _i2.TripMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
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
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTripCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTripMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTripMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UsersOnTripsCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateInput({
    this.id,
    this.role,
    this.createdAt,
    this.updatedAt,
    required this.user,
    required this.trip,
  });

  final String? id;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.UserCreateNestedOneWithoutUsersOnTripsInput user;

  final _i2.TripCreateNestedOneWithoutUsersOnTripsInput trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
        'trip': trip,
      };
}

class UsersOnTripsUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedCreateInput({
    this.id,
    required this.userId,
    required this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String userId;

  final String tripId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCreateManyInput({
    this.id,
    required this.userId,
    required this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String userId;

  final String tripId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class CreateManyUsersOnTripsAndReturnOutputTypeUserArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUsersOnTripsAndReturnOutputTypeUserArgs({
    this.select,
    this.include,
  });

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyUsersOnTripsAndReturnOutputTypeTripArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUsersOnTripsAndReturnOutputTypeTripArgs({
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

class CreateManyUsersOnTripsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUsersOnTripsAndReturnOutputTypeSelect({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  final bool? id;

  final bool? userId;

  final bool? tripId;

  final bool? role;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyUsersOnTripsAndReturnOutputTypeUserArgs>?
      user;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyUsersOnTripsAndReturnOutputTypeTripArgs>?
      trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
        'trip': trip,
      };
}

class CreateManyUsersOnTripsAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUsersOnTripsAndReturnOutputTypeInclude({
    this.user,
    this.trip,
  });

  final _i1
      .PrismaUnion<bool, _i2.CreateManyUsersOnTripsAndReturnOutputTypeUserArgs>?
      user;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyUsersOnTripsAndReturnOutputTypeTripArgs>?
      trip;

  @override
  Map<String, dynamic> toJson() => {
        'user': user,
        'trip': trip,
      };
}

class UsersOnTripsUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUpdateInput({
    this.id,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.UserUpdateOneRequiredWithoutUsersOnTripsNestedInput? user;

  final _i2.TripUpdateOneRequiredWithoutUsersOnTripsNestedInput? trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'user': user,
        'trip': trip,
      };
}

class UsersOnTripsUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateInput({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsUncheckedUpdateManyInput({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsCountAggregateOutputType {
  const UsersOnTripsCountAggregateOutputType({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  factory UsersOnTripsCountAggregateOutputType.fromJson(Map json) =>
      UsersOnTripsCountAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        tripId: json['tripId'],
        role: json['role'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? userId;

  final int? tripId;

  final int? role;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class UsersOnTripsMinAggregateOutputType {
  const UsersOnTripsMinAggregateOutputType({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UsersOnTripsMinAggregateOutputType.fromJson(Map json) =>
      UsersOnTripsMinAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        tripId: json['tripId'],
        role: json['role'] != null
            ? _i3.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
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

  final String? id;

  final String? userId;

  final String? tripId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role?.name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class UsersOnTripsMaxAggregateOutputType {
  const UsersOnTripsMaxAggregateOutputType({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory UsersOnTripsMaxAggregateOutputType.fromJson(Map json) =>
      UsersOnTripsMaxAggregateOutputType(
        id: json['id'],
        userId: json['userId'],
        tripId: json['tripId'],
        role: json['role'] != null
            ? _i3.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
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

  final String? id;

  final String? userId;

  final String? tripId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role?.name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class UsersOnTripsGroupByOutputType {
  const UsersOnTripsGroupByOutputType({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UsersOnTripsGroupByOutputType.fromJson(Map json) =>
      UsersOnTripsGroupByOutputType(
        id: json['id'],
        userId: json['userId'],
        tripId: json['tripId'],
        role: json['role'] != null
            ? _i3.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
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
            ? _i2.UsersOnTripsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsersOnTripsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsersOnTripsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? userId;

  final String? tripId;

  final _i3.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.UsersOnTripsCountAggregateOutputType? $count;

  final _i2.UsersOnTripsMinAggregateOutputType? $min;

  final _i2.UsersOnTripsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role?.name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UsersOnTripsCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCountOrderByAggregateInput({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? role;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsMaxOrderByAggregateInput({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? role;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsMinOrderByAggregateInput({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? role;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsOrderByWithAggregationInput({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? role;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.UsersOnTripsCountOrderByAggregateInput? $count;

  final _i2.UsersOnTripsMaxOrderByAggregateInput? $max;

  final _i2.UsersOnTripsMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedEnumRoleWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumRoleWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumRoleFilter? $min;

  final _i2.NestedEnumRoleFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumRoleWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumRoleWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumRoleFilter? $min;

  final _i2.NestedEnumRoleFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UsersOnTripsScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereWithAggregatesInput,
      Iterable<_i2.UsersOnTripsScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UsersOnTripsScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UsersOnTripsScalarWhereWithAggregatesInput,
      Iterable<_i2.UsersOnTripsScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? userId;

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? tripId;

  final _i1.PrismaUnion<_i2.EnumRoleWithAggregatesFilter, _i3.Role>? role;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsCountAggregateOutputTypeSelect({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? userId;

  final bool? tripId;

  final bool? role;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class UsersOnTripsGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsGroupByOutputTypeCountArgs({this.select});

  final _i2.UsersOnTripsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersOnTripsMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsMinAggregateOutputTypeSelect({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? userId;

  final bool? tripId;

  final bool? role;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsGroupByOutputTypeMinArgs({this.select});

  final _i2.UsersOnTripsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersOnTripsMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsMaxAggregateOutputTypeSelect({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? userId;

  final bool? tripId;

  final bool? role;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class UsersOnTripsGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsGroupByOutputTypeMaxArgs({this.select});

  final _i2.UsersOnTripsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersOnTripsGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOnTripsGroupByOutputTypeSelect({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? userId;

  final bool? tripId;

  final bool? role;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.UsersOnTripsGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.UsersOnTripsGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UsersOnTripsGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUsersOnTrips {
  const AggregateUsersOnTrips({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateUsersOnTrips.fromJson(Map json) => AggregateUsersOnTrips(
        $count: json['_count'] is Map
            ? _i2.UsersOnTripsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsersOnTripsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsersOnTripsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UsersOnTripsCountAggregateOutputType? $count;

  final _i2.UsersOnTripsMinAggregateOutputType? $min;

  final _i2.UsersOnTripsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUsersOnTripsCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersOnTripsCountArgs({this.select});

  final _i2.UsersOnTripsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersOnTripsMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersOnTripsMinArgs({this.select});

  final _i2.UsersOnTripsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersOnTripsMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersOnTripsMaxArgs({this.select});

  final _i2.UsersOnTripsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersOnTripsSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersOnTripsSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUsersOnTripsCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersOnTripsMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersOnTripsMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class TripCreateWithoutPlacesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TripCreateWithoutPlacesInput({
    this.id,
    required this.tripName,
    this.description,
    required this.startDate,
    required this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.users,
    this.usersOnTrips,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.UserCreateNestedManyWithoutTripsInput? users;

  final _i2.UsersOnTripsCreateNestedManyWithoutTripInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.users,
    this.usersOnTrips,
  });

  final String? id;

  final String tripName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final DateTime startDate;

  final DateTime endDate;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? imageUrl;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final _i2.UserUncheckedCreateNestedManyWithoutTripsInput? users;

  final _i2.UsersOnTripsUncheckedCreateNestedManyWithoutTripInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.id,
    required this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    required this.trip,
    this.tags,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripCreateNestedOneWithoutPlacesInput trip;

  final _i2.TagCreateNestedManyWithoutPlacesInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    required this.tripId,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final String tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagUncheckedCreateNestedManyWithoutPlacesInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    required this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final String tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? notes;

  final bool? startDate;

  final bool? endDate;

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
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.users,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.UserUpdateManyWithoutTripsNestedInput? users;

  final _i2.UsersOnTripsUpdateManyWithoutTripNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.users,
    this.usersOnTrips,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      startDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      endDate;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? imageUrl;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isShared;

  final _i2.UserUncheckedUpdateManyWithoutTripsNestedInput? users;

  final _i2.UsersOnTripsUncheckedUpdateManyWithoutTripNestedInput? usersOnTrips;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'isShared': isShared,
        'users': users,
        'UsersOnTrips': usersOnTrips,
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
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TripUpdateOneRequiredWithoutPlacesNestedInput? trip;

  final _i2.TagUpdateManyWithoutPlacesNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.tags,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TagUncheckedUpdateManyWithoutPlacesNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
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
        notes: json['notes'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        tripId: json['tripId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? placeName;

  final int? description;

  final int? notes;

  final int? startDate;

  final int? endDate;

  final int? tripId;

  final int? createdAt;

  final int? updatedAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_all': $all,
      };
}

class PlaceMinAggregateOutputType {
  const PlaceMinAggregateOutputType({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  factory PlaceMinAggregateOutputType.fromJson(Map json) =>
      PlaceMinAggregateOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        notes: json['notes'],
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

  final String? id;

  final String? placeName;

  final String? description;

  final String? notes;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  factory PlaceMaxAggregateOutputType.fromJson(Map json) =>
      PlaceMaxAggregateOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        notes: json['notes'],
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

  final String? id;

  final String? placeName;

  final String? description;

  final String? notes;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory PlaceGroupByOutputType.fromJson(Map json) => PlaceGroupByOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        notes: json['notes'],
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
        $min: json['_min'] is Map
            ? _i2.PlaceMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlaceMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? placeName;

  final String? description;

  final String? notes;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceCountAggregateOutputType? $count;

  final _i2.PlaceMinAggregateOutputType? $min;

  final _i2.PlaceMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'tripId': tripId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceMaxOrderByAggregateInput({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i2.SortOrder? description;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? startDate;

  final _i2.SortOrder? endDate;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceOrderByWithAggregationInput({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? placeName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? notes;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? startDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? endDate;

  final _i2.SortOrder? tripId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.PlaceCountOrderByAggregateInput? $count;

  final _i2.PlaceMaxOrderByAggregateInput? $max;

  final _i2.PlaceMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
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

class PlaceScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<_i2.PlaceScalarWhereWithAggregatesInput,
      Iterable<_i2.PlaceScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PlaceScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereWithAggregatesInput,
      Iterable<_i2.PlaceScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? placeName;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? tripId;

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
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$all,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? notes;

  final bool? startDate;

  final bool? endDate;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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

class PlaceMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceMinAggregateOutputTypeSelect({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? notes;

  final bool? startDate;

  final bool? endDate;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? notes;

  final bool? startDate;

  final bool? endDate;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? placeName;

  final bool? description;

  final bool? notes;

  final bool? startDate;

  final bool? endDate;

  final bool? tripId;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PlaceGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePlace {
  const AggregatePlace({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregatePlace.fromJson(Map json) => AggregatePlace(
        $count: json['_count'] is Map
            ? _i2.PlaceCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlaceMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlaceMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PlaceCountAggregateOutputType? $count;

  final _i2.PlaceMinAggregateOutputType? $min;

  final _i2.PlaceMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
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
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePlaceMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class PlaceCreateWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateWithoutTagsInput({
    this.id,
    required this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    required this.trip,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TripCreateNestedOneWithoutPlacesInput trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    required this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final String? id;

  final String placeName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? startDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? endDate;

  final String tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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

class PlaceCreateNestedManyWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlaceCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TagCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagCreateInput({
    this.id,
    required this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final String? id;

  final String tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceCreateNestedManyWithoutTagsInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class PlaceUncheckedCreateNestedManyWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlaceCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
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

  final String? id;

  final String tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.PlaceUncheckedCreateNestedManyWithoutTagsInput? places;

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

  final String? id;

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
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.trip,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.TripUpdateOneRequiredWithoutPlacesNestedInput? trip;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
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
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUpsertWithWhereUniqueWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpsertWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlaceWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithoutTagsInput,
      _i2.PlaceUncheckedUpdateWithoutTagsInput> update;

  final _i1.PrismaUnion<_i2.PlaceCreateWithoutTagsInput,
      _i2.PlaceUncheckedCreateWithoutTagsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlaceUpdateWithWhereUniqueWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithoutTagsInput,
      _i2.PlaceUncheckedUpdateWithoutTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceUncheckedUpdateManyWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateManyWithoutTagsInput({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      placeName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? startDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? endDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tripId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate,
        'endDate': endDate,
        'tripId': tripId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

class PlaceUpdateManyWithWhereWithoutTagsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateManyWithWhereWithoutTagsInput({
    required this.where,
    required this.data,
  });

  final _i2.PlaceScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlaceUpdateManyMutationInput,
      _i2.PlaceUncheckedUpdateManyWithoutTagsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlaceUpdateManyWithoutTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUpdateManyWithoutTagsNestedInput({
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
      _i2.PlaceCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceUpsertWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceUpsertWithWhereUniqueWithoutTagsInput>>? upsert;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceUpdateWithWhereUniqueWithoutTagsInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceUpdateManyWithWhereWithoutTagsInput,
      Iterable<_i2.PlaceUpdateManyWithWhereWithoutTagsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? deleteMany;

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

class TagUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUpdateInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PlaceUpdateManyWithoutTagsNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
      };
}

class PlaceUncheckedUpdateManyWithoutTagsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlaceUncheckedUpdateManyWithoutTagsNestedInput({
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
      _i2.PlaceCreateWithoutTagsInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlaceCreateWithoutTagsInput>,
          _i1.PrismaUnion<_i2.PlaceUncheckedCreateWithoutTagsInput,
              Iterable<_i2.PlaceUncheckedCreateWithoutTagsInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlaceCreateOrConnectWithoutTagsInput,
      Iterable<_i2.PlaceCreateOrConnectWithoutTagsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlaceUpsertWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceUpsertWithWhereUniqueWithoutTagsInput>>? upsert;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlaceWhereUniqueInput,
      Iterable<_i2.PlaceWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlaceUpdateWithWhereUniqueWithoutTagsInput,
      Iterable<_i2.PlaceUpdateWithWhereUniqueWithoutTagsInput>>? update;

  final _i1.PrismaUnion<_i2.PlaceUpdateManyWithWhereWithoutTagsInput,
      Iterable<_i2.PlaceUpdateManyWithWhereWithoutTagsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlaceScalarWhereInput,
      Iterable<_i2.PlaceScalarWhereInput>>? deleteMany;

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

class TagUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagUncheckedUpdateInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? tagName;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updatedAt;

  final _i2.PlaceUncheckedUpdateManyWithoutTagsNestedInput? places;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'places': places,
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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

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

  final String? id;

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

  final String? id;

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
        $min: json['_min'] is Map
            ? _i2.TagMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.TagCountAggregateOutputType? $count;

  final _i2.TagMinAggregateOutputType? $min;

  final _i2.TagMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '_count': $count?.toJson(),
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

class TagOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TagOrderByWithAggregationInput({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? tagName;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? updatedAt;

  final _i2.TagCountOrderByAggregateInput? $count;

  final _i2.TagMaxOrderByAggregateInput? $max;

  final _i2.TagMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
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

  final _i1.PrismaUnion<_i2.UuidWithAggregatesFilter, String>? id;

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
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? tagName;

  final bool? createdAt;

  final bool? updatedAt;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TagGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTag {
  const AggregateTag({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateTag.fromJson(Map json) => AggregateTag(
        $count: json['_count'] is Map
            ? _i2.TagCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TagMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TagMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TagCountAggregateOutputType? $count;

  final _i2.TagMinAggregateOutputType? $min;

  final _i2.TagMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
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
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTagCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTagMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTagMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
