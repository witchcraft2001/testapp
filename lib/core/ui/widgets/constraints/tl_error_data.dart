// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/generated/l10n.dart';

class TlErrorData extends StatelessWidget {
  final String message;
  final TlExceptionType type;
  final String? description;
  final VoidCallback? onPressed;
  final String? buttonTitle;

  const TlErrorData({
    super.key,
    required this.message,
    this.type = TlExceptionType.other,
    this.description,
    this.onPressed,
    this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return TlEmptyData(
      message: message,
      description: description,
      buttonTitle: buttonTitle ?? S.current.btnRetry,
      buttonType: AppBtnType.primary,
      onPressed: onPressed,
      asset: exceptionAssets[type],
    );
  }
}
