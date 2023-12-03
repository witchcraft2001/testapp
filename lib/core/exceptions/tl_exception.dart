// Package imports:
import 'package:equatable/equatable.dart';

abstract class TlException extends Equatable implements Exception {
  @override
  bool get stringify => true;
}
