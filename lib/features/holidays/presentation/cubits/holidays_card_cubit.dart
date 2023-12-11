// Dart imports:
import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/features/holidays/domain/use_cases/init_holidays_directory_use_case.dart';
import 'package:terralinkapp/features/holidays/domain/use_cases/send_holidays_card_by_email_use_case.dart';
import 'package:terralinkapp/features/holidays/domain/use_cases/share_holidays_card_use_case.dart';
import 'package:terralinkapp/features/holidays/presentation/cubits/holidays_card_data.dart';

class HolidaysCardCubit extends Cubit<HolidaysCardData> {
  final InitHolidaysDirectoryUseCase _initDirectoryUseCase;
  final SendHolidaysCardByEmailUseCase _sendByEmailUseCase;
  final ShareHolidaysCardUseCase _shareUseCase;

  HolidaysCardCubit(
    this._initDirectoryUseCase,
    this._sendByEmailUseCase,
    this._shareUseCase,
  ) : super(HolidaysCardData());

  late Directory _directory;

  Future<void> init() async {
    _directory = await _initDirectoryUseCase.run();
  }

  void changeTheme(String value) => _updateState(theme: value);
  void changeAppeal(String value) => _updateState(appeal: value);

  Future<void> share(GlobalKey globalKey) async {
    final path = await _create(globalKey);

    await _shareUseCase.run(path, state);
  }

  Future<EmailSendingResult> send(GlobalKey globalKey) async {
    final path = await _create(globalKey);
    final result = await _sendByEmailUseCase.run(path, state);

    return result;
  }

  void _updateState({
    String? theme,
    String? appeal,
  }) {
    final newState = state.copyWith(
      subject: theme,
      appeal: appeal,
    );

    emit(newState.copyWith());
  }

  Future<String> _create(GlobalKey globalKey) async {
    return Future.delayed(const Duration(milliseconds: 50), () async {
      final RenderRepaintBoundary boundary =
          globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;

      final ui.Image image = await boundary.toImage();
      final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      final Uint8List pngBytes = byteData!.buffer.asUint8List();

      const filename = 'Terralink_Event_22.12.23.png';
      final path = '${_directory.path}$filename';

      await File(path).writeAsBytes(pngBytes);

      return path;
    });
  }
}
