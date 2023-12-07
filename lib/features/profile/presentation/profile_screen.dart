// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/avatar.dart';
import 'package:terralinkapp/core/ui/widgets/text_cell.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/profile/data/use_cases/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/data/use_cases/set_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/profile/domain/cubits/profile_cubit.dart';
import 'package:terralinkapp/features/profile/domain/states/profile_cubit_state.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'widgets/profile_card.dart';

List<String> _users = [
  'kudinova@terralink-global.com',
  'kudinova@terralink.ru',
  'nizamov@terralink-global.com',
  'nizamov@terralink.ru',
  'nizamova@terralink-global.com',
  'nizamova@terralink.ru',
  'polevoys@terralink-global.com',
  'polevoys@terralink.ru',
  'plyaskinm@terralink-global.com',
  'plyaskinm@terralink.ru',
  'filatovam@terralink-global.com',
  'filatovam@terralink.ru',
  'sladkovev@terralink-global.com',
  'samoylovm@terralink-global.com',
  'miftakhovi@terralink-global.com',
  'miftakhovi@terralink.ru',
  'im@terralink-global.com',
  'im@terralink.ru',
];

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
          loading: () => const TlProgressIndicator(),
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
            if (_users.contains(data.email.toLowerCase()))
              _ProfileCard(
                icon: TlAssets.iconHeart,
                title: S.current.titleHolidays,
                onTap: () => appNavigationService.goNamed(context, AppRoutes.profileHolidays.name),
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
            _ProfileCard(
              icon: TlAssets.iconAbout,
              title: S.current.settingsAboutApp,
              onTap: () => appNavigationService.goNamed(context, AppRoutes.profileAbout.name),
            ),
          ],
        ),
      ),
    );
  }
}
