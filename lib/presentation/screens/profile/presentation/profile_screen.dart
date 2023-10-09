// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/data/use_cases/profile/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/data/use_cases/profile/set_profile_avatar_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/profile/domain/cubits/profile_cubit.dart';
import 'package:terralinkapp/presentation/screens/profile/domain/states/profile_cubit_state.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/avatar.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/text_cell.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';

part 'widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(
        getIt<UserService>(),
        getIt<GetProfileAvatarUseCase>(),
        getIt<SetProfileAvatarUseCase>(),
      )..init(),
      child: BlocBuilder<ProfileCubit, ProfileCubitState>(
        builder: (_, state) => state.when(
          loading: () => const CenteredProgressIndicator(),
          ready: (data) => _ContentData(data: data),
        ),
      ),
    );
  }
}

class _ContentData extends StatelessWidget {
  final ProfileState data;

  const _ContentData({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.ph24t76,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: context.bloc<ProfileCubit>().setAvatar,
              child: Avatar(
                avatarUrl: data.avatar.fullPath,
                size: AvatarSize.l,
                icon: Icons.camera_alt_outlined,
              ),
            ),
            const SizedBox(height: TlSpaces.sp20),
            Text(
              data.name,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: context.appTheme?.appTheme.textMain),
            ),
            const SizedBox(height: TlSpaces.sp32),
            _ProfileCard(
              icon: TlAssets.iconProfileDocuments,
              title: S.current.profileDocuments,
              onTap: () => appNavigationService.goNamed(context, AppRoutes.profileDocuments.name),
            ),
            _ProfileCard(
              icon: TlAssets.iconBusinessCards,
              title: S.current.titleMyBusinessCards,
              onTap: () =>
                  appNavigationService.goNamed(context, AppRoutes.profileBusinessCards.name),
            ),
            _ProfileCard(
              icon: TlAssets.iconProfileSettings,
              title: S.current.titleSettings,
              onTap: () => appNavigationService.goNamed(context, AppRoutes.profileSettings.name),
            ),
            _ProfileCard(
              icon: TlAssets.iconProfileFeedback,
              title: S.current.feedbackTitle,
              onTap: () => appNavigationService.goNamed(context, AppRoutes.profileFeedback.name),
            ),
          ],
        ),
      ),
    );
  }
}
