// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/params/avatar_use_case_params.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/set_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/presentation/cubits/profile/profile_cubit_state.dart';

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
    final avatar = await _getProfileAvatarUseCase();
    final user = _userService.getUser();

    _current = _current.copyWith(
      avatar: avatar,
      name: user?.name ?? '',
      lastName: user?.lastName ?? '',
      email: user?.email ?? '',
    );

    emit(ProfileCubitState.ready(_current));
  }

  Future<void> setAvatar() async {
    final avatar = await _setProfileAvatarUseCase(AvatarUseCaseParams(_current.avatar));

    _current = _current.copyWith(avatar: avatar);

    emit(ProfileCubitState.ready(_current));
  }
}
