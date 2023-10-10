// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_empty_data.dart';

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
      asset: context.appTheme?.isDarkTheme == true
          ? TlAssets.imageTlLogoRuDark
          : TlAssets.imageTlLogoRu,
    );
  }
}
