// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/generated/l10n.dart';

class TlDialogConfirm extends StatelessWidget {
  final Widget? content;
  final String? iconAsset;
  final VoidCallback? onCancel, onConfirm;
  final String? message, confirmTitle, cancelTitle;
  final AppBtnType confirmType, cancelType;
  final AppBtnStyle cancelStyle;

  const TlDialogConfirm({
    super.key,
    this.message,
    this.content,
    this.iconAsset,
    this.onCancel,
    this.onConfirm,
    this.confirmTitle,
    this.confirmType = AppBtnType.danger,
    this.cancelType = AppBtnType.secondary,
    this.cancelStyle = AppBtnStyle.outline,
    this.cancelTitle,
  });

  @override
  Widget build(BuildContext context) {
    final isMessage = message != null;
    final isIcon = iconAsset != null;
    final isConfirm = confirmTitle != null;

    return AlertDialog(
      titlePadding: TlSpaces.ph40t40,
      title: isMessage || isIcon
          ? Column(
              children: [
                if (isIcon)
                  Container(
                    padding: isMessage ? TlSpaces.pb16 : null,
                    child: TlSvg(
                      assetName: iconAsset!,
                      backgroundSize: TlSizes.dialogIconSize,
                      backgroundColor: context.appTheme?.colors.brAndIcons,
                      color: context.appTheme?.colors.whiteOnColor,
                      borderRadius: TlDecoration.brDialogIcon,
                    ),
                  ),
                if (isMessage) Text(message!, textAlign: TextAlign.center),
              ],
            )
          : null,
      contentPadding: TlSpaces.ph12v24,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (content != null)
            Container(
              padding: !isMessage ? TlSpaces.ph12t16b24 : TlSpaces.ph12b24,
              child: content,
            ),
          Row(
            children: [
              if (isConfirm)
                Flexible(
                  child: TlButton(
                    withOverflow: true,
                    padding: TlSpaces.ph12,
                    title: confirmTitle,
                    type: confirmType,
                    onPressed: onConfirm,
                  ),
                ),
              Flexible(
                child: TlButton(
                  withOverflow: true,
                  padding: TlSpaces.ph12,
                  title: cancelTitle ?? S.current.btnCancel,
                  style: cancelStyle,
                  type: cancelType,
                  onPressed: () {
                    onCancel?.call();
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
