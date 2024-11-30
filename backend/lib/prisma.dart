import 'package:backend/prisma/generated_dart_client/client.dart';

class PrismaSingleton {
  static final PrismaClient _prismaClient = PrismaClient();

  PrismaSingleton._();

  static PrismaClient get client => _prismaClient;
}
