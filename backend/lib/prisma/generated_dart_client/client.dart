// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class UserDelegate {
  const UserDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.User?> findUnique({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findUniqueUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findUniqueOrThrow({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findUniqueUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> findFirst({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findFirstUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findFirstOrThrow({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findFirstUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.User>> findMany({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.User>>(
      action: 'findManyUser',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.User.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.User> create({
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
        data,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'createOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1
        .PrismaUnion<_i3.UserCreateManyInput, Iterable<_i3.UserCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyUserAndReturnOutputType>>
      createManyAndReturn({
    required _i1
        .PrismaUnion<_i3.UserCreateManyInput, Iterable<_i3.UserCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyUserAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyUserAndReturnOutputType>>(
      action: 'createManyUserAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyUserAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.User?> update({
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
        data,
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'updateOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.UserUpdateManyMutationInput,
            _i3.UserUncheckedUpdateManyInput>
        data,
    _i3.UserWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User> upsert({
    required _i3.UserWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
        update,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'upsertOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> delete({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'deleteOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.UserWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>> groupBy({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithAggregationInput>,
            _i3.UserOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UserScalar>, _i3.UserScalar> by,
    _i3.UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UserGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>>(
      action: 'groupByUser',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.UserGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateUser> aggregate({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUserSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUser>(
      action: 'aggregateUser',
      result: result,
      factory: (e) => _i3.AggregateUser.fromJson(e),
    );
  }
}

class TripDelegate {
  const TripDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Trip?> findUnique({
    required _i3.TripWhereUniqueInput where,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip?>(
      action: 'findUniqueTrip',
      result: result,
      factory: (e) => e != null ? _i2.Trip.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Trip> findUniqueOrThrow({
    required _i3.TripWhereUniqueInput where,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip>(
      action: 'findUniqueTripOrThrow',
      result: result,
      factory: (e) => _i2.Trip.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Trip?> findFirst({
    _i3.TripWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripOrderByWithRelationInput>,
            _i3.TripOrderByWithRelationInput>?
        orderBy,
    _i3.TripWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TripScalar, Iterable<_i3.TripScalar>>? distinct,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip?>(
      action: 'findFirstTrip',
      result: result,
      factory: (e) => e != null ? _i2.Trip.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Trip> findFirstOrThrow({
    _i3.TripWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripOrderByWithRelationInput>,
            _i3.TripOrderByWithRelationInput>?
        orderBy,
    _i3.TripWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TripScalar, Iterable<_i3.TripScalar>>? distinct,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip>(
      action: 'findFirstTripOrThrow',
      result: result,
      factory: (e) => _i2.Trip.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Trip>> findMany({
    _i3.TripWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripOrderByWithRelationInput>,
            _i3.TripOrderByWithRelationInput>?
        orderBy,
    _i3.TripWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TripScalar, Iterable<_i3.TripScalar>>? distinct,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Trip>>(
      action: 'findManyTrip',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Trip.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Trip> create({
    required _i1.PrismaUnion<_i3.TripCreateInput, _i3.TripUncheckedCreateInput>
        data,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip>(
      action: 'createOneTrip',
      result: result,
      factory: (e) => _i2.Trip.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1
        .PrismaUnion<_i3.TripCreateManyInput, Iterable<_i3.TripCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyTrip',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyTripAndReturnOutputType>>
      createManyAndReturn({
    required _i1
        .PrismaUnion<_i3.TripCreateManyInput, Iterable<_i3.TripCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyTripAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyTripAndReturnOutputType>>(
      action: 'createManyTripAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyTripAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Trip?> update({
    required _i1.PrismaUnion<_i3.TripUpdateInput, _i3.TripUncheckedUpdateInput>
        data,
    required _i3.TripWhereUniqueInput where,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip?>(
      action: 'updateOneTrip',
      result: result,
      factory: (e) => e != null ? _i2.Trip.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TripUpdateManyMutationInput,
            _i3.TripUncheckedUpdateManyInput>
        data,
    _i3.TripWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyTrip',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Trip> upsert({
    required _i3.TripWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.TripCreateInput, _i3.TripUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.TripUpdateInput, _i3.TripUncheckedUpdateInput>
        update,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip>(
      action: 'upsertOneTrip',
      result: result,
      factory: (e) => _i2.Trip.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Trip?> delete({
    required _i3.TripWhereUniqueInput where,
    _i3.TripSelect? select,
    _i3.TripInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trip?>(
      action: 'deleteOneTrip',
      result: result,
      factory: (e) => e != null ? _i2.Trip.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TripWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyTrip',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TripGroupByOutputType>> groupBy({
    _i3.TripWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripOrderByWithAggregationInput>,
            _i3.TripOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TripScalar>, _i3.TripScalar> by,
    _i3.TripScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TripGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TripGroupByOutputType>>(
      action: 'groupByTrip',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.TripGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTrip> aggregate({
    _i3.TripWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripOrderByWithRelationInput>,
            _i3.TripOrderByWithRelationInput>?
        orderBy,
    _i3.TripWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTripSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Trip',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTrip>(
      action: 'aggregateTrip',
      result: result,
      factory: (e) => _i3.AggregateTrip.fromJson(e),
    );
  }
}

class PlaceDelegate {
  const PlaceDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Place?> findUnique({
    required _i3.PlaceWhereUniqueInput where,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place?>(
      action: 'findUniquePlace',
      result: result,
      factory: (e) => e != null ? _i2.Place.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Place> findUniqueOrThrow({
    required _i3.PlaceWhereUniqueInput where,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place>(
      action: 'findUniquePlaceOrThrow',
      result: result,
      factory: (e) => _i2.Place.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Place?> findFirst({
    _i3.PlaceWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceOrderByWithRelationInput>,
            _i3.PlaceOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlaceScalar, Iterable<_i3.PlaceScalar>>? distinct,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place?>(
      action: 'findFirstPlace',
      result: result,
      factory: (e) => e != null ? _i2.Place.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Place> findFirstOrThrow({
    _i3.PlaceWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceOrderByWithRelationInput>,
            _i3.PlaceOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlaceScalar, Iterable<_i3.PlaceScalar>>? distinct,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place>(
      action: 'findFirstPlaceOrThrow',
      result: result,
      factory: (e) => _i2.Place.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Place>> findMany({
    _i3.PlaceWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceOrderByWithRelationInput>,
            _i3.PlaceOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlaceScalar, Iterable<_i3.PlaceScalar>>? distinct,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Place>>(
      action: 'findManyPlace',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Place.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Place> create({
    required _i1
        .PrismaUnion<_i3.PlaceCreateInput, _i3.PlaceUncheckedCreateInput>
        data,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place>(
      action: 'createOnePlace',
      result: result,
      factory: (e) => _i2.Place.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PlaceCreateManyInput,
            Iterable<_i3.PlaceCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPlace',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyPlaceAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.PlaceCreateManyInput,
            Iterable<_i3.PlaceCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyPlaceAndReturnOutputTypeSelect? select,
    _i3.CreateManyPlaceAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyPlaceAndReturnOutputType>>(
      action: 'createManyPlaceAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyPlaceAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Place?> update({
    required _i1
        .PrismaUnion<_i3.PlaceUpdateInput, _i3.PlaceUncheckedUpdateInput>
        data,
    required _i3.PlaceWhereUniqueInput where,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place?>(
      action: 'updateOnePlace',
      result: result,
      factory: (e) => e != null ? _i2.Place.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PlaceUpdateManyMutationInput,
            _i3.PlaceUncheckedUpdateManyInput>
        data,
    _i3.PlaceWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPlace',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Place> upsert({
    required _i3.PlaceWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.PlaceCreateInput, _i3.PlaceUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.PlaceUpdateInput, _i3.PlaceUncheckedUpdateInput>
        update,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place>(
      action: 'upsertOnePlace',
      result: result,
      factory: (e) => _i2.Place.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Place?> delete({
    required _i3.PlaceWhereUniqueInput where,
    _i3.PlaceSelect? select,
    _i3.PlaceInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Place?>(
      action: 'deleteOnePlace',
      result: result,
      factory: (e) => e != null ? _i2.Place.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PlaceWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPlace',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PlaceGroupByOutputType>> groupBy({
    _i3.PlaceWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceOrderByWithAggregationInput>,
            _i3.PlaceOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PlaceScalar>, _i3.PlaceScalar> by,
    _i3.PlaceScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PlaceGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PlaceGroupByOutputType>>(
      action: 'groupByPlace',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PlaceGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePlace> aggregate({
    _i3.PlaceWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceOrderByWithRelationInput>,
            _i3.PlaceOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePlaceSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Place',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePlace>(
      action: 'aggregatePlace',
      result: result,
      factory: (e) => _i3.AggregatePlace.fromJson(e),
    );
  }
}

class TagDelegate {
  const TagDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Tag?> findUnique({
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'findUniqueTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tag> findUniqueOrThrow({
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'findUniqueTagOrThrow',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tag?> findFirst({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagOrderByWithRelationInput>,
            _i3.TagOrderByWithRelationInput>?
        orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagScalar, Iterable<_i3.TagScalar>>? distinct,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'findFirstTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tag> findFirstOrThrow({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagOrderByWithRelationInput>,
            _i3.TagOrderByWithRelationInput>?
        orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagScalar, Iterable<_i3.TagScalar>>? distinct,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'findFirstTagOrThrow',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Tag>> findMany({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagOrderByWithRelationInput>,
            _i3.TagOrderByWithRelationInput>?
        orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagScalar, Iterable<_i3.TagScalar>>? distinct,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Tag>>(
      action: 'findManyTag',
      result: result,
      factory: (values) => (values as Iterable).map((e) => _i2.Tag.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Tag> create({
    required _i1.PrismaUnion<_i3.TagCreateInput, _i3.TagUncheckedCreateInput>
        data,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'createOneTag',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1
        .PrismaUnion<_i3.TagCreateManyInput, Iterable<_i3.TagCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyTagAndReturnOutputType>>
      createManyAndReturn({
    required _i1
        .PrismaUnion<_i3.TagCreateManyInput, Iterable<_i3.TagCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyTagAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyTagAndReturnOutputType>>(
      action: 'createManyTagAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyTagAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Tag?> update({
    required _i1.PrismaUnion<_i3.TagUpdateInput, _i3.TagUncheckedUpdateInput>
        data,
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'updateOneTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TagUpdateManyMutationInput,
            _i3.TagUncheckedUpdateManyInput>
        data,
    _i3.TagWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tag> upsert({
    required _i3.TagWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.TagCreateInput, _i3.TagUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.TagUpdateInput, _i3.TagUncheckedUpdateInput>
        update,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'upsertOneTag',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tag?> delete({
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'deleteOneTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TagWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TagGroupByOutputType>> groupBy({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagOrderByWithAggregationInput>,
            _i3.TagOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TagScalar>, _i3.TagScalar> by,
    _i3.TagScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TagGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TagGroupByOutputType>>(
      action: 'groupByTag',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i3.TagGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTag> aggregate({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagOrderByWithRelationInput>,
            _i3.TagOrderByWithRelationInput>?
        orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTagSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTag>(
      action: 'aggregateTag',
      result: result,
      factory: (e) => _i3.AggregateTag.fromJson(e),
    );
  }
}

class TagsOnPlacesDelegate {
  const TagsOnPlacesDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.TagsOnPlaces?> findUnique({
    required _i3.TagsOnPlacesWhereUniqueInput where,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces?>(
      action: 'findUniqueTagsOnPlaces',
      result: result,
      factory: (e) => e != null ? _i2.TagsOnPlaces.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.TagsOnPlaces> findUniqueOrThrow({
    required _i3.TagsOnPlacesWhereUniqueInput where,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces>(
      action: 'findUniqueTagsOnPlacesOrThrow',
      result: result,
      factory: (e) => _i2.TagsOnPlaces.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.TagsOnPlaces?> findFirst({
    _i3.TagsOnPlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOnPlacesOrderByWithRelationInput>,
            _i3.TagsOnPlacesOrderByWithRelationInput>?
        orderBy,
    _i3.TagsOnPlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagsOnPlacesScalar, Iterable<_i3.TagsOnPlacesScalar>>?
        distinct,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces?>(
      action: 'findFirstTagsOnPlaces',
      result: result,
      factory: (e) => e != null ? _i2.TagsOnPlaces.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.TagsOnPlaces> findFirstOrThrow({
    _i3.TagsOnPlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOnPlacesOrderByWithRelationInput>,
            _i3.TagsOnPlacesOrderByWithRelationInput>?
        orderBy,
    _i3.TagsOnPlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagsOnPlacesScalar, Iterable<_i3.TagsOnPlacesScalar>>?
        distinct,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces>(
      action: 'findFirstTagsOnPlacesOrThrow',
      result: result,
      factory: (e) => _i2.TagsOnPlaces.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.TagsOnPlaces>> findMany({
    _i3.TagsOnPlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOnPlacesOrderByWithRelationInput>,
            _i3.TagsOnPlacesOrderByWithRelationInput>?
        orderBy,
    _i3.TagsOnPlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagsOnPlacesScalar, Iterable<_i3.TagsOnPlacesScalar>>?
        distinct,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.TagsOnPlaces>>(
      action: 'findManyTagsOnPlaces',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.TagsOnPlaces.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.TagsOnPlaces> create({
    required _i1.PrismaUnion<_i3.TagsOnPlacesCreateInput,
            _i3.TagsOnPlacesUncheckedCreateInput>
        data,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces>(
      action: 'createOneTagsOnPlaces',
      result: result,
      factory: (e) => _i2.TagsOnPlaces.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.TagsOnPlacesCreateManyInput,
            Iterable<_i3.TagsOnPlacesCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyTagsOnPlaces',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyTagsOnPlacesAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.TagsOnPlacesCreateManyInput,
            Iterable<_i3.TagsOnPlacesCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyTagsOnPlacesAndReturnOutputTypeSelect? select,
    _i3.CreateManyTagsOnPlacesAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyTagsOnPlacesAndReturnOutputType>>(
      action: 'createManyTagsOnPlacesAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyTagsOnPlacesAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.TagsOnPlaces?> update({
    required _i1.PrismaUnion<_i3.TagsOnPlacesUpdateInput,
            _i3.TagsOnPlacesUncheckedUpdateInput>
        data,
    required _i3.TagsOnPlacesWhereUniqueInput where,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces?>(
      action: 'updateOneTagsOnPlaces',
      result: result,
      factory: (e) => e != null ? _i2.TagsOnPlaces.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TagsOnPlacesUpdateManyMutationInput,
            _i3.TagsOnPlacesUncheckedUpdateManyInput>
        data,
    _i3.TagsOnPlacesWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyTagsOnPlaces',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.TagsOnPlaces> upsert({
    required _i3.TagsOnPlacesWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.TagsOnPlacesCreateInput,
            _i3.TagsOnPlacesUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.TagsOnPlacesUpdateInput,
            _i3.TagsOnPlacesUncheckedUpdateInput>
        update,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces>(
      action: 'upsertOneTagsOnPlaces',
      result: result,
      factory: (e) => _i2.TagsOnPlaces.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.TagsOnPlaces?> delete({
    required _i3.TagsOnPlacesWhereUniqueInput where,
    _i3.TagsOnPlacesSelect? select,
    _i3.TagsOnPlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.TagsOnPlaces?>(
      action: 'deleteOneTagsOnPlaces',
      result: result,
      factory: (e) => e != null ? _i2.TagsOnPlaces.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TagsOnPlacesWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyTagsOnPlaces',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TagsOnPlacesGroupByOutputType>> groupBy({
    _i3.TagsOnPlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOnPlacesOrderByWithAggregationInput>,
            _i3.TagsOnPlacesOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.TagsOnPlacesScalar>, _i3.TagsOnPlacesScalar>
        by,
    _i3.TagsOnPlacesScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TagsOnPlacesGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TagsOnPlacesGroupByOutputType>>(
      action: 'groupByTagsOnPlaces',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.TagsOnPlacesGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTagsOnPlaces> aggregate({
    _i3.TagsOnPlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOnPlacesOrderByWithRelationInput>,
            _i3.TagsOnPlacesOrderByWithRelationInput>?
        orderBy,
    _i3.TagsOnPlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTagsOnPlacesSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'TagsOnPlaces',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTagsOnPlaces>(
      action: 'aggregateTagsOnPlaces',
      result: result,
      factory: (e) => _i3.AggregateTagsOnPlaces.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [
      {
        'name': 'LoginType',
        'values': [
          {
            'name': 'EMAIL',
            'dbName': null,
          },
          {
            'name': 'GOOGLE',
            'dbName': null,
          },
          {
            'name': 'FACEBOOK',
            'dbName': null,
          },
        ],
        'dbName': null,
      }
    ],
    'models': [
      {
        'name': 'User',
        'dbName': 'users',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'username',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'dbName': 'created_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'dbName': 'updated_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
          {
            'name': 'password',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'loginType',
            'dbName': 'login_type',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'LoginType',
            'default': 'EMAIL',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'providerId',
            'dbName': 'provider_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'trips',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Trip',
            'relationName': 'TripToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Trip',
        'dbName': 'trips',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tripName',
            'dbName': 'trip_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'dbName': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'startDate',
            'dbName': 'start_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'endDate',
            'dbName': 'end_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'places',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Place',
            'relationName': 'PlaceToTrip',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'users',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'TripToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'dbName': 'created_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'dbName': 'updated_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Place',
        'dbName': 'places',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'placeName',
            'dbName': 'place_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'note',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'trip',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Trip',
            'relationName': 'PlaceToTrip',
            'relationFromFields': ['tripId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tripId',
            'dbName': 'trip_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tags',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'TagsOnPlaces',
            'relationName': 'PlaceToTagsOnPlaces',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'dbName': 'created_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'dbName': 'updated_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Tag',
        'dbName': 'tags',
        'fields': [
          {
            'name': 'id',
            'dbName': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tagName',
            'dbName': 'tag_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'places',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'TagsOnPlaces',
            'relationName': 'TagToTagsOnPlaces',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'dbName': 'created_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'dbName': 'updated_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'TagsOnPlaces',
        'dbName': 'places_tags',
        'fields': [
          {
            'name': 'placeId',
            'dbName': 'place_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tagId',
            'dbName': 'tag_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'place',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Place',
            'relationName': 'PlaceToTagsOnPlaces',
            'relationFromFields': ['placeId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tag',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Tag',
            'relationName': 'TagToTagsOnPlaces',
            'relationFromFields': ['tagId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': {
          'name': null,
          'fields': [
            'placeId',
            'tagId',
          ],
        },
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'User',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'User',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'email'}
        ],
      },
      {
        'model': 'User',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'providerId'}
        ],
      },
      {
        'model': 'Trip',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Place',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Tag',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Tag',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'tagName'}
        ],
      },
      {
        'model': 'TagsOnPlaces',
        'type': 'id',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'placeId'},
          {'name': 'tagId'},
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            'generator client {\n  provider = "dart run orm"\n  output   = "generated_dart_client"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("DATABASE_URL")\n}\n\nmodel User {\n  id         Int       @id @default(autoincrement())\n  email      String    @unique\n  username   String?\n  createdAt  DateTime  @default(now()) @map("created_at")\n  updatedAt  DateTime  @updatedAt @map("updated_at")\n  password   String?\n  loginType  LoginType @default(EMAIL) @map("login_type")\n  providerId String    @unique @map("provider_id")\n  trips      Trip[]\n\n  @@map("users")\n}\n\nenum LoginType {\n  EMAIL\n  GOOGLE\n  FACEBOOK\n}\n\nmodel Trip {\n  id          Int      @id @default(autoincrement())\n  tripName    String   @map("trip_name")\n  description String?  @map("description")\n  startDate   DateTime @map("start_date")\n  endDate     DateTime @map("end_date")\n  places      Place[]\n  users       User[]\n  createdAt   DateTime @default(now()) @map("created_at")\n  updatedAt   DateTime @updatedAt @map("updated_at")\n\n  @@map("trips")\n}\n\nmodel Place {\n  id          Int            @id @default(autoincrement())\n  placeName   String         @map("place_name")\n  description String?\n  note        String?\n  trip        Trip           @relation(fields: [tripId], references: [id])\n  tripId      Int            @map("trip_id")\n  tags        TagsOnPlaces[]\n  createdAt   DateTime       @default(now()) @map("created_at")\n  updatedAt   DateTime       @updatedAt @map("updated_at")\n\n  @@map("places")\n}\n\nmodel Tag {\n  id        Int            @id @default(autoincrement()) @map("id")\n  tagName   String         @unique @map("tag_name")\n  places    TagsOnPlaces[]\n  createdAt DateTime       @default(now()) @map("created_at")\n  updatedAt DateTime       @updatedAt @map("updated_at")\n\n  @@map("tags")\n}\n\nmodel TagsOnPlaces {\n  placeId Int   @map("place_id")\n  tagId   Int   @map("tag_id")\n  place   Place @relation(fields: [placeId], references: [id])\n  tag     Tag   @relation(fields: [tagId], references: [id])\n\n  @@id([placeId, tagId])\n  @@map("places_tags")\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  UserDelegate get user => UserDelegate._(this);

  TripDelegate get trip => TripDelegate._(this);

  PlaceDelegate get place => PlaceDelegate._(this);

  TagDelegate get tag => TagDelegate._(this);

  TagsOnPlacesDelegate get tagsOnPlaces => TagsOnPlacesDelegate._(this);
}
