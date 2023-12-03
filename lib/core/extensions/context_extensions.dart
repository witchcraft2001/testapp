// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextExtension on BuildContext {
  Brightness get brightness => MediaQuery.of(this).platformBrightness;
  Size get size => MediaQuery.of(this).size;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  void unfocus() => FocusScope.of(this).unfocus();

  T bloc<T extends BlocBase>() => BlocProvider.of<T>(this);
}
