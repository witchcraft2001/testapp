// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';

part 'users_state.freezed.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.loading() = _Loading;
  const factory UsersState.ready(UsersReadyData data) = _Ready;
  const factory UsersState.error(String message, TlExceptionType type) = _Error;
}

class UsersReadyData {
  final List<ApiUser> users;
  final bool isLoading;
  final String search;
  final int total;
  final int page;
  final String? toastMessage;

  const UsersReadyData({
    this.users = const [],
    this.total = 0,
    this.page = 1,
    this.isLoading = false,
    this.search = '',
    this.toastMessage,
  });

  UsersReadyData copyWith({
    List<ApiUser>? users,
    int? total,
    int? page,
    bool? isLoading,
    String? search,
    String? toastMessage,
  }) =>
      UsersReadyData(
        users: users ?? this.users,
        total: total ?? this.total,
        page: page ?? this.page,
        isLoading: isLoading ?? this.isLoading,
        search: search ?? this.search,
        toastMessage: toastMessage ?? this.toastMessage,
      );
}
