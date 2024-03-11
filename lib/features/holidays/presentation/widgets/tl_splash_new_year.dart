// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/holidays/presentation/animations/holidays_snowflakes_wrapper.dart';

const _color = Color(0xFF0989DB);

class TlSplashNewYear extends StatelessWidget {
  final String message;

  const TlSplashNewYear({
    super.key,
    this.message = Constants.appTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    final center = context.width / 2;

    return HolidaysSnowflakesWrapper(
      withStarted: true,
      child: Container(
        width: double.infinity,
        color: _color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  const Positioned(
                    bottom: 0,
                    child: TlSvg(assetName: TlAssets.imageSplashNewYearWood),
                  ),
                  Positioned(
                    left: center - 371,
                    bottom: -88,
                    child: const TlSvg(assetName: TlAssets.imageSplashNewYearSnowGround),
                  ),
                  Positioned(
                    left: center,
                    bottom: TlSpaces.sp40,
                    child: const TlSvg(assetName: TlAssets.imageSplashNewYearTree),
                  ),
                  const Positioned(
                    left: 0,
                    right: 0,
                    bottom: TlSpaces.sp24,
                    child: Center(
                      child: TlSvg(assetName: TlAssets.imageSplashNewYearSnowman),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const TlSvg(
                            margin: TlSpaces.pt64,
                            assetName: TlAssets.imageAppLogo,
                            size: TlSizes.appLogoSize,
                            color: Colors.white,
                          ),
                          Container(
                            margin: TlSpaces.pt24,
                            padding: TlSpaces.p8,
                            decoration: BoxDecoration(
                              color: _color,
                              borderRadius: TlDecoration.brBase,
                            ),
                            child: Text(
                              Constants.appTitle,
                              style: theme?.text.w400s32cWhite,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
