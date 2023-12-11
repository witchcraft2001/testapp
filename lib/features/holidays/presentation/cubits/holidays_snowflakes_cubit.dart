// Dart imports:
import 'dart:async';
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/features/holidays/domain/entities/app_snowflake_entity.dart';

const _max = 4;
const _delay = Duration(milliseconds: 50);
const _period = Duration(milliseconds: 400);
const _leftOffset = 128;

List<AppSnowflakeEntity> _generate() {
  final snowflakes = <AppSnowflakeEntity>[];

  for (var i = 0; i < 256; i++) {
    snowflakes.add(AppSnowflakeEntity.createStarted(2560, 1280));
  }

  return snowflakes;
}

class HolidaysSnowflakesCubit extends Cubit<List<AppSnowflakeEntity>> {
  Timer? _timer;

  HolidaysSnowflakesCubit() : super([]);

  void init(BuildContext context, {bool withStarted = false}) {
    if (withStarted) _showStarted();

    _timer = Timer.periodic(_period, (timer) {
      emit([...state, AppSnowflakeEntity.create(context.width)]);

      Future.delayed(_delay, () {
        final snowflakes = [...state];
        snowflakes.last.top = 1280;
      });

      if (timer.tick > 10) {
        final snowflakes = [...state];
        final min = state.length - 5;
        final index = Random().nextInt(_max) + min;

        snowflakes[index].left = snowflakes[index].left! +
            (snowflakes[index].left! > context.width * 0.5
                ? -Random().nextInt(_leftOffset)
                : Random().nextInt(_leftOffset));
      }
    });
  }

  void _showStarted() {
    final flakes = _generate();

    for (final snowflake in flakes) {
      Future.delayed(_delay, () {
        snowflake.top = 1280;
      });
    }

    emit([...flakes]);
  }

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }
}
