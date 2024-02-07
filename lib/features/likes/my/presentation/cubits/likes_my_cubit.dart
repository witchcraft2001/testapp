// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/clear_cache_likes_use_case.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_use_case.dart';
import 'package:terralinkapp/features/likes/my/presentation/cubits/likes_my_state.dart';

@injectable
class LikesMyCubit extends Cubit<LikesMyState> {
  final GetLikesUseCase _getLikesUseCase;
  final ClearCacheLikesUseCase _clearCacheLikesUseCase;

  LikesMyCubit(
    this._getLikesUseCase,
    this._clearCacheLikesUseCase,
  ) : super(const LikesMyState.loading());

  Future<void> init() async {
    emit(const LikesMyState.loading());

    await _update();
  }

  Future<void> refresh() async {
    await _clearCacheLikesUseCase();
    await init();
  }

  Future<void> _update() async {
    try {
      final likes = await _getLikesUseCase();

      emit(LikesMyState.ready(likes));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(LikesMyState.error(message ?? '', type));
    }
  }
}
