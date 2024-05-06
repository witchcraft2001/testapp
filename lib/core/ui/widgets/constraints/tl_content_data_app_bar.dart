// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_svg_icon_button.dart';
import 'package:terralinkapp/core/ui/widgets/tl_page_indicator.dart';

class TlContentDataAppBar extends StatelessWidget {
  final int length;
  final int index;
  final Color? color;
  final void Function(int)? onTap;

  const TlContentDataAppBar({
    super.key,
    required this.length,
    required this.index,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return Padding(
      padding: TlSpaces.ph24v4,
      child: Row(
        children: [
          Expanded(
            child: TlPageIndicator(
              count: length,
              index: index,
              color: color,
              onTap: onTap,
            ),
          ),
          Padding(
            padding: TlSpaces.pl8,
            child: ClipRRect(
              borderRadius: TlDecoration.brBtnBase,
              child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 500),
                color: color ?? colors?.primary,
                child: TlSvgIconButton(
                  assetName: TlAssets.iconCross,
                  onPressed: Navigator.of(context).pop,
                  color: colors?.whiteOnColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
