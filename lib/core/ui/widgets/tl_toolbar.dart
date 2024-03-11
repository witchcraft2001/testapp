// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';

class TlToolbar extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double? elevation;
  final Color? background;

  const TlToolbar({
    super.key,
    required this.title,
    this.onPressed,
    this.elevation = 0.0,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0.0),
      color: background ?? AppColors.stAccent,
      borderOnForeground: false,
      elevation: elevation,
      shadowColor: const Color(0x29304D1F),
      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      child: SizedBox(
        height: 79.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getBackButton(context),
            _getTitle(context),
            // _getCloseButton(context)
          ],
        ),
      ),
    );
  }

  Widget _getBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 16.0),
      child: GestureDetector(
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: TlSvg(
            // ToDo при использовании компонента заменить ассет на шеврон для унификации
            assetName: 'assets/images/ic_arrow_left.svg',
            color: AppColors.stWhiteOnColor,
          ),
        ),
        onTap: () => {if (onPressed != null) onPressed!()},
      ),
    );
  }

  Widget _getTitle(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      style: context.appTheme?.text.w700s20cWhite,
    );
  }
}
