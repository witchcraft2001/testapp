// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'text_cell.dart';
import 'tl_card.dart';

class SettingButton extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final EdgeInsets? margin;

  const SettingButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: margin ?? TlSpaces.pb12,
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: onTap,
        child: TextCell(
          icon: SvgPicture.asset(icon),
          title: title,
          titleStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: context.appTheme?.appTheme.textMain,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
          subtitle: SvgPicture.asset(TlAssets.iconArrowRight),
        ),
      ),
    );
  }
}
