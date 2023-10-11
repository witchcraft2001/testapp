// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';

class TlSplash extends StatelessWidget {
  final String message;

  const TlSplash({
    super.key,
    this.message = '',
  });

  @override
  Widget build(BuildContext context) {
    return TlEmptyData(
      message: message,
      assetWidget: const TlSvg(
        assetName: TlAssets.imageAppLogo,
        size: TlSizes.appLogoSize,
      ),
    );
  }
}
