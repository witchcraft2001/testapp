// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_avatar.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';
import 'package:terralinkapp/generated/l10n.dart';

class UserTile extends StatelessWidget {
  final ApiUser? user;
  final VoidCallback? onGoTo;
  final Function(ApiUser)? onSelect;
  final bool withoutTrailing;

  const UserTile({
    super.key,
    this.user,
    this.onGoTo,
    this.onSelect,
    this.withoutTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    if (user != null) {
      final name = user!.titleRu.isNotEmpty ? user!.titleRu : user!.titleEn;

      final position = user!.positionRu.isNotEmpty ? user!.positionRu : user!.positionEn;

      return ListTile(
        contentPadding: TlSpaces.ph24,
        shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
        onTap: onGoTo ?? (onSelect != null ? () => onSelect!(user!) : null),
        leading: user!.photo != null && user!.photo!.isNotEmpty
            ? TlAvatar(
                url: user!.photo!,
                size: AvatarSize.s,
              )
            : TlSvg(
                margin: TlSpaces.pv4,
                assetName: TlAssets.iconUserCircle,
                color: colors?.textSignatures,
                size: TlSizes.avatarS,
              ),
        title: Text(name, style: text?.w400s13cMain),
        subtitle: Text(position, style: text?.w400s11cSignatures),
        trailing: withoutTrailing
            ? null
            : TlSvg(
                assetName: TlAssets.iconUserEdit,
                color: colors?.textSignatures,
              ),
      );
    }

    return ListTile(
      contentPadding: TlSpaces.ph24v8,
      shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
      onTap: () => appNavigationService.goNamed(
        context,
        AppRoutes.users.name,
        extra: {AppNavigationKeys.onSelect: onSelect},
      ),
      title: Padding(
        padding: TlSpaces.pv12,
        child: Text(
          S.current.usersSelect,
          style: text?.w600s14cSignatures,
        ),
      ),
      leading: TlSvg(
        assetName: TlAssets.iconUserCircle,
        color: colors?.textSignatures,
      ),
    );
  }
}
