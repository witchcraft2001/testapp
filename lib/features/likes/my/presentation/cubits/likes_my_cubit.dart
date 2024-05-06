// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_like.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/clear_cache_likes_use_case.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_use_case.dart';

@injectable
class LikesMyCubit extends Cubit<CommonState<List<ApiLike>>> {
  final GetLikesUseCase _getLikesUseCase;
  final ClearCacheLikesUseCase _clearCacheLikesUseCase;

  LikesMyCubit(
    this._getLikesUseCase,
    this._clearCacheLikesUseCase,
  ) : super(const CommonState.init());

  Future<void> init() async {
    emit(const CommonState.init());

    await _update();
  }

  Future<void> refresh() async {
    await _clearCacheLikesUseCase();
    await init();
  }

  Future<void> _update() async {
    try {
      final likes = await _getLikesUseCase();

      emit(CommonState.ready(likes));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(CommonState.error(message ?? '', type));
    }
  }
}
