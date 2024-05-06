// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_use_case.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/params/avatar_use_case_params.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/set_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/presentation/cubits/profile/profile_cubit_ready_data.dart';

class ProfileCubit extends Cubit<CommonStateLite<ProfileReadyData>> {
  final UserService _userService;
  final GetProfileUseCase _getProfileUseCase;
  final GetProfileAvatarUseCase _getProfileAvatarUseCase;
  final SetProfileAvatarUseCase _setProfileAvatarUseCase;

  ProfileCubit(
    this._userService,
    this._getProfileUseCase,
    this._getProfileAvatarUseCase,
    this._setProfileAvatarUseCase,
  ) : super(const CommonStateLite.init());

  ProfileReadyData _current = const ProfileReadyData();

  Future init() async {
    final avatar = await _getProfileAvatarUseCase();
    final user = _userService.getUser();
    final profile = await _getProfileUseCase();

    _current = _current.copyWith(
      avatar: avatar,
      name: user?.name ?? '',
      lastName: user?.lastName ?? '',
      email: user?.email ?? '',
      position: profile?.positionEn ?? profile?.positionRu,
    );

    emit(CommonStateLite.ready(_current));
  }

  Future<void> setAvatar() async {
    final avatar = await _setProfileAvatarUseCase(AvatarUseCaseParams(_current.avatar));

    _current = _current.copyWith(avatar: avatar);

    emit(CommonStateLite.ready(_current));
  }
}
