part of 'package:terralinkapp/presentation/screens/chat/presentation/chat_screen.dart';

class _BodyBottomField extends StatelessWidget {
  final String text;
  final void Function(String value) onChanged;
  final void Function() onSendClicked;
  final TextEditingController controller;

  const _BodyBottomField({
    required this.text,
    required this.onChanged,
    required this.onSendClicked,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: context.appTheme?.appTheme.bordersAndIconsStrokeShape ??
            AppColors.bordersAndIconsStrokeShape,
        width: 1.5,
      ),
      borderRadius: TlDecoration.brTextField,
    );

    return Padding(
      padding: TlSpaces.ph24t4b16,
      child: Material(
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: TlDecoration.brTextField),
        shadowColor: AppColors.shadow,
        child: TextField(
          textInputAction: TextInputAction.send,
          maxLines: 6,
          minLines: 1,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: AppFontWeight.regular,
                color: context.appTheme?.appTheme.textMain,
              ),
          controller: controller,
          decoration: InputDecoration(
            focusedBorder: border,
            enabledBorder: border,
            errorBorder: border,
            contentPadding: TlSpaces.ph16v8,
            suffixIcon: Padding(
              padding: TlSpaces.p12,
              child: InkWell(
                onTap: onSendClicked,
                child: SvgPicture.asset(TlAssets.iconSend),
              ),
            ),
            hintText: S.current.writeMessage,
          ),
          onChanged: onChanged,
          onEditingComplete: onSendClicked,
        ),
      ),
    );
  }
}
