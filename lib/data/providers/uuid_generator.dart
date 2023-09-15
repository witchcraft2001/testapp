// Package imports:
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

abstract class UuidGenerator {
  String generate();
}

@LazySingleton(as: UuidGenerator, env: [Environment.dev, Environment.prod])
class UuidGeneratorImpl extends UuidGenerator {
  final Uuid _uuid = const Uuid();

  @override
  String generate() => _uuid.v4();
}
