part of '../profile_screen.dart';

// Использовалось для организации доступа для приглашения на корпоратив
// List<String> _users = [
// 'kudinova@terralink-global.com',
// 'kudinova@terralink.ru',
// 'nizamov@terralink-global.com',
// 'nizamov@terralink.ru',
// 'nizamova@terralink-global.com',
// 'nizamova@terralink.ru',
// 'polevoys@terralink-global.com',
// 'polevoys@terralink.ru',
// 'plyaskinm@terralink-global.com',
// 'plyaskinm@terralink.ru',
// 'filatovam@terralink-global.com',
// 'filatovam@terralink.ru',
// 'sladkovev@terralink-global.com',
// 'samoylovm@terralink-global.com',
// 'test_user1@terralink-global.com',
// 'miftakhovi@terralink-global.com',
// 'miftakhovi@terralink.ru',
// 'im@terralink-global.com',
// 'im@terralink.ru',
// ];

class _ProfileSections extends StatelessWidget {
  final String email;

  const _ProfileSections({required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ProfileSection(
          icon: TlAssets.iconProfileDocuments,
          title: S.current.profileDocuments,
          onTap: () => appNavigationService.goNamed(context, AppRoutes.profileDocuments.name),
        ),
        _ProfileSection(
          icon: TlAssets.iconUserSquare,
          title: S.current.businessCards,
          onTap: () => appNavigationService.goNamed(context, AppRoutes.profileBusinessCards.name),
        ),
        _ProfileSection(
          icon: TlAssets.iconHeart,
          title: S.current.greetingCards,
          onTap: () => appNavigationService.goNamed(context, AppRoutes.profileGreetingCards.name),
        ),
        _ProfileSection(
          icon: TlAssets.iconProfileSettings,
          title: S.current.settings,
          onTap: () => appNavigationService.goNamed(context, AppRoutes.profileSettings.name),
        ),
        _ProfileSection(
          icon: TlAssets.iconProfileFeedback,
          title: S.current.feedbackTitle,
          onTap: () => appNavigationService.goNamed(context, AppRoutes.profileFeedback.name),
        ),
        _ProfileSection(
          icon: TlAssets.iconAbout,
          title: S.current.settingsAboutApp,
          onTap: () => appNavigationService.goNamed(context, AppRoutes.profileAbout.name),
        ),
      ],
    );
  }
}
