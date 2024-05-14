part of 'package:terralinkapp/features/chats/presentation/chat/chat_screen.dart';

class _BodyBottomField extends StatelessWidget {
  final String text;
  final List<ChatQueryExample> queryExamples;
  final TextEditingController controller;

  const _BodyBottomField({
    required this.text,
    required this.queryExamples,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: colors?.brAndIconsShapes ?? appColorsThemeLight.brAndIconsShapes,
        width: 1.5,
      ),
      borderRadius: TlDecoration.brTextField,
    );

    return Column(
      children: [
        if (queryExamples.isNotEmpty) _buildExamples(context),
        Padding(
          padding: TlSpaces.ph24t4b16,
          child: Material(
            elevation: 8.0,
            shape: RoundedRectangleBorder(borderRadius: TlDecoration.brTextField),
            shadowColor: AppColors.stShadow,
            child: TextField(
              textInputAction: TextInputAction.send,
              maxLines: 6,
              minLines: 1,
              style: context.appTheme?.text.w400s16cMain,
              controller: controller,
              decoration: InputDecoration(
                focusedBorder: border,
                enabledBorder: border,
                errorBorder: border,
                contentPadding: TlSpaces.ph16v8,
                suffixIcon: Padding(
                  padding: TlSpaces.p12,
                  child: InkWell(
                    onTap: context.read<ChatCubit>().send,
                    child: const TlSvg(assetName: TlAssets.iconSend),
                  ),
                ),
                hintText: S.current.chatNewMessage,
              ),
              onChanged: context.read<ChatCubit>().changeText,
              onEditingComplete: context.read<ChatCubit>().send,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExamples(BuildContext context) {
    final colors = context.appTheme?.colors;

    return TlExpandable(
      title: S.current.chatQueryExamples,
      iconPlacement: ExpandablePanelIconPlacement.right,
      wrapperDecoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: colors?.brAndIconsShapes ?? appColorsThemeLight.brAndIconsShapes,
          ),
        ),
        color: colors?.bgForms,
      ),
      expanded: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: context.height / 3),
        child: ListView.builder(
          padding: TlSpaces.ph24,
          shrinkWrap: true,
          itemCount: queryExamples.length,
          itemBuilder: (_, index) => _QueryExample(example: queryExamples[index]),
        ),
      ),
    );
  }
}
