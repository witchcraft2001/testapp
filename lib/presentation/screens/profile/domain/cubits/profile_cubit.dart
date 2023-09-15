// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart';
import 'package:terralinkapp/presentation/screens/profile/domain/states/profile_screen_state.dart';
import 'package:terralinkapp/presentation/screens/profile/domain/states/profile_state.dart';

class ProfileCubit extends Cubit<ProfileScreenState> {
  final UserService _userService;
  final GetProfileAvatarUseCase _getProfileAvatarUseCase;
  final SetProfileAvatarUseCase _setProfileAvatarUseCase;

  ProfileCubit(
    this._userService,
    this._getProfileAvatarUseCase,
    this._setProfileAvatarUseCase,
  ) : super(const ProfileScreenState.loading());

  ProfileState _state = const ProfileState();

  Future init() async {
    final avatar = await _getProfileAvatarUseCase.run();
    final name = _userService.getUser()?.name ?? '';

    _state = _state.copyWith(
      avatar: avatar,
      name: name,
    );

    emit(ProfileScreenState.loaded(_state));
  }

  Future<void> setAvatar() async {
    final avatar = await _setProfileAvatarUseCase.run(_state.avatar);

    _state = _state.copyWith(avatar: avatar);

    emit(ProfileScreenState.loaded(_state));
  }
}
