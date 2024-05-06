// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_likes_stat.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_stat_use_case.dart';

class LikesStatCubit extends Cubit<CommonStateLite<ApiLikesStat>> {
  final GetLikesStatUseCase _getLikesStatUseCase;
  final LikesRepository _likesRepository;
  final LogService _logService;

  late StreamSubscription _statSubscription;

  LikesStatCubit(
    this._getLikesStatUseCase,
    this._likesRepository,
    this._logService,
  ) : super(const CommonStateLite.init()) {
    _statSubscription = _likesRepository.stream.listen((value) {
      _current = _current.copyWith(receiveLikes: value);

      emit(CommonStateLite.ready(_current));
    });
  }

  ApiLikesStat _current = const ApiLikesStat();

  Future init() async {
    try {
      _current = await _getLikesStatUseCase();
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
    } finally {
      emit(CommonStateLite.ready(_current));
    }
  }

  @override
  Future<void> close() async {
    _statSubscription.cancel();

    super.close();
  }
}
