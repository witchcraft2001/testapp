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
import 'package:terralinkapp/core/common/tl_chars.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/clear_cache_greeting_templates_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/get_greeting_templates_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/init_greetings_card_directory_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/params/greeting_cards_use_case_params.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/send_greeting_card_by_email_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/share_greeting_card_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/cubits/greeting_cards_ready_data.dart';

class GreetingCardsCubit extends Cubit<CommonState<GreetingCardsReadyData>> {
  final InitGreetingCardsDirectoryUseCase _initDirectoryUseCase;
  final GetGreetingTemplatesUseCase _getTemplatesUseCase;
  final ClearCacheGreetingTemplatesUseCase _clearTemplatesUseCase;
  final SendGreetingCardByEmailUseCase _sendByEmailUseCase;
  final ShareGreetingCardUseCase _shareUseCase;

  GreetingCardsCubit(
    this._initDirectoryUseCase,
    this._getTemplatesUseCase,
    this._clearTemplatesUseCase,
    this._sendByEmailUseCase,
    this._shareUseCase,
  ) : super(const CommonState.loading());

  late Directory _directory;

  GreetingCardsReadyData _current = const GreetingCardsReadyData();

  Future<void> init() async {
    _directory = await _initDirectoryUseCase();
  }

  Future<void> get() async {
    try {
      emit(const CommonState.loading());

      final templates = await _getTemplatesUseCase();
      final isTemplates = templates.isNotEmpty;

      _current = GreetingCardsReadyData(
        templates: templates,
        selected: isTemplates ? templates.first : null,
        subject: isTemplates ? templates.first.title : '',
      );

      emit(CommonState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(CommonState.error(message ?? '', type));
    }
  }

  Future<void> refresh() async {
    _clearTemplatesUseCase();

    await get();
  }

  void selectTemplate(ApiGreetingTemplate template) {
    _current = _current.copyWith(
      selected: template,
      subject: template.title,
    );

    emit(CommonState.ready(_current));
  }

  void changeSubject(String value) => _updateState(subject: value);
  void changeAppeal(String value) => _updateState(appeal: value);
  void changeSignature(String value) => _updateState(signature: value);

  Future<void> share(
    GlobalKey globalKey,
    Rect? sharePosition,
  ) async {
    final path = await _create(globalKey);

    await _shareUseCase(GreetingCardsSharedUseCaseParams(
      attachmentPath: path,
      data: _current,
      sharePosition: sharePosition,
    ));
  }

  Future<NotificationSendingResult> send(GlobalKey globalKey) async {
    final path = await _create(globalKey);
    final result = await _sendByEmailUseCase(GreetingCardsUseCaseParams(
      attachmentPath: path,
      data: _current,
    ));

    return result;
  }

  void _updateState({
    String? subject,
    String? appeal,
    String? signature,
  }) {
    _current = _current.copyWith(
      subject: subject,
      appeal: appeal,
      signature: signature,
    );

    emit(CommonState.ready(_current));
  }

  Future<String> _create(GlobalKey globalKey) async {
    return Future.delayed(const Duration(milliseconds: 500), () async {
      final RenderRepaintBoundary boundary =
          globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

      final ui.Image image = await boundary.toImage();
      final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      final Uint8List pngBytes = byteData!.buffer.asUint8List();

      final title = _current.selected?.title.replaceAll(' ', TlChars.underscore) ?? 'GreetingCard';

      final filename = '$title.png';
      final path = '${_directory.path}$filename';

      await File(path).writeAsBytes(pngBytes);

      return path;
    });
  }
}
