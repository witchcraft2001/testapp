// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/use_cases/params/search_paged_use_case_params.dart';
import 'package:terralinkapp/features/users/domain/use_cases/clear_cache_users_use_case.dart';
import 'package:terralinkapp/features/users/domain/use_cases/get_users_use_case.dart';
import 'package:terralinkapp/features/users/presentation/cubits/users_state.dart';

@injectable
class UsersCubit extends Cubit<UsersState> {
  final GetUsersUseCase _getUsersUseCase;
  final ClearCacheUsersUseCase _clearCacheUsersUseCase;

  UsersCubit(
    this._getUsersUseCase,
    this._clearCacheUsersUseCase,
  ) : super(const UsersState.loading());

  UsersReadyData _current = const UsersReadyData();

  Future<void> init() async {
    emit(const UsersState.loading());

    try {
      final data = await _getUsersUseCase(
        SearchPagedUseCaseParams(
          search: _current.search,
          page: _current.page,
        ),
      );

      _current = _current.copyWith(
        users: [
          ..._current.users,
          ...?data?.users,
        ],
        search: data?.search,
        total: data?.total,
        page: data?.page,
      );

      emit(UsersState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(UsersState.error(message ?? '', type));
    }
  }

  Future<void> get({bool isRefresh = false}) async {
    int page = _current.page;

    if (isRefresh) {
      _current = _current.copyWith(isLoading: true);
      emit(UsersState.ready(_current));

      page = 1;
    } else {
      page++;
    }

    try {
      final data = await _getUsersUseCase(
        SearchPagedUseCaseParams(
          search: _current.search,
          page: page,
        ),
      );

      _current = _current.copyWith(
        users: [
          if (!isRefresh) ..._current.users,
          ...?data?.users,
        ],
        page: data?.page,
        isLoading: false,
      );

      emit(UsersState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(UsersState.error(message ?? '', type));
    }
  }

  Future<void> search(String search) async {
    _current = _current.copyWith(
      isLoading: true,
    );

    emit(UsersState.ready(_current));

    await Future.delayed(const Duration(seconds: 1)).then((_) async {
      _current = _current.copyWith(
        search: search,
      );
    });

    emit(UsersState.ready(_current));

    try {
      final data = await _getUsersUseCase(
        SearchPagedUseCaseParams(search: search, page: 1),
      );

      _current = _current.copyWith(
        users: [
          ...?data?.users,
        ],
        page: data?.page,
        total: data?.total,
        isLoading: false,
      );

      emit(UsersState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(UsersState.error(message ?? '', type));
    }
  }

  Future<void> refresh() async {
    _clearCacheUsersUseCase();

    await init();
  }
}
