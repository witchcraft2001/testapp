// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/utils/snacbar.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/params/send_like_use_case_params.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/send_like_use_case.dart';
import 'package:terralinkapp/features/likes/new/presentation/cubits/likes_new_state.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class LikesNewCubit extends Cubit<LikesNewState> {
  final SendLikeUseCase _sendLikeUseCase;

  LikesNewCubit(
    this._sendLikeUseCase,
  ) : super(const LikesNewState.loading());

  LikesNewReadyData _current = const LikesNewReadyData();

  void changeContent(String value) => _updateState(content: value);
  void selectUser(ApiUser value) => _updateState(user: value);

  Future<void> send() async {
    try {
      final result = await _sendLikeUseCase(
        SendLikeUseCaseParams(
          _current.content,
          _current.user,
        ),
      );

      if (result == NotificationSendingResult.success) {
        _current = LikesNewReadyData(
          toast: TlSnackBarData(
            message: S.current.likesNewSendingSuccess,
            result: NotificationSendingResult.success,
          ),
        );
      }
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      _current = _current.copyWith(
        toast: TlSnackBarData(
          message: message!,
          result: NotificationSendingResult.error,
        ),
      );
    } finally {
      emit(LikesNewState.ready(_current));
    }
  }

  void _updateState({
    String? content,
    ApiUser? user,
  }) {
    _current = _current.copyWith(
      content: content,
      user: user,
    );

    emit(LikesNewState.ready(_current));
  }

  void resetToastMessage() {
    _current = LikesNewReadyData(
      content: _current.content,
      user: _current.user,
    );

    emit(LikesNewState.ready(_current));
  }
}
