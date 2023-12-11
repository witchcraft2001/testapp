// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/features/profile/data/use_cases/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/data/use_cases/set_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/domain/states/profile_cubit_state.dart';

class ProfileCubit extends Cubit<ProfileCubitState> {
  final UserService _userService;
  final GetProfileAvatarUseCase _getProfileAvatarUseCase;
  final SetProfileAvatarUseCase _setProfileAvatarUseCase;

  ProfileCubit(
    this._userService,
    this._getProfileAvatarUseCase,
    this._setProfileAvatarUseCase,
  ) : super(const ProfileCubitState.loading());

  ProfileState _current = const ProfileState();

  Future init() async {
    final avatar = await _getProfileAvatarUseCase.run();
    final user = _userService.getUser();

    _current = _current.copyWith(
      avatar: avatar,
      name: user?.name ?? '',
      email: user?.email ?? '',
    );

    emit(ProfileCubitState.ready(_current));
  }

  Future<void> setAvatar() async {
    final avatar = await _setProfileAvatarUseCase.run(_current.avatar);

    _current = _current.copyWith(avatar: avatar);

    emit(ProfileCubitState.ready(_current));
  }
}
