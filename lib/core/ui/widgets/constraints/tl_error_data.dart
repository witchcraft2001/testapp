// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/generated/l10n.dart';

class TlErrorData extends StatelessWidget {
  final String message;
  final String? description;
  final VoidCallback? onPressed;

  const TlErrorData({
    super.key,
    required this.message,
    this.description,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TlEmptyData(
      message: message,
      description: description,
      buttonTitle: S.current.btnRetry,
      buttonType: AppBtnType.primary,
      onPressed: onPressed,
      // ToDo подумать над улучшением отображения
      assetWidget: Container(
        decoration: BoxDecoration(
          color: AppColors.dangerBackground,
          borderRadius: BorderRadius.circular(64.0),
        ),
        child: const Padding(
          padding: TlSpaces.p24,
          child: Icon(
            Icons.warning_amber_outlined,
            color: AppColors.textOnPrimary,
            size: 54.0,
          ),
        ),
      ),
    );
  }
}
