part of '../../../greeting_cards_screen.dart';

class _BodyPreview extends StatelessWidget {
  final GlobalKey globalKey;
  final GreetingCardsReadyData data;

  const _BodyPreview({
    required this.globalKey,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final template = data.selected!;
    final colors = context.appTheme!.colors;

    // ToDo 357 если будут включены группы, тогда нужно будет брать не первую группу
    final blocks = template.groups.first.blocks;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: TlSpaces.pv16,
          child: Text(
            S.current.greetingCardsPreview,
            style: context.appTheme?.text.w700s14cContrast,
          ),
        ),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: SizedBox(
            width: 2048,
            child: RepaintBoundary(
              key: globalKey,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: SizedBox(
                  width: 412, // Соответствует размеру без обеих оберток
                  child: ColoredBox(
                    color: template.backgroundColor ?? colors.bgMenu,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: blocks.length,
                      itemBuilder: (_, index) => MediaContentBlockWidget(
                        block: blocks[index],
                        params: _getParams(context, template.backgroundColor != null),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  MediaContentBlockParams _getParams(BuildContext context, bool isBackgroundColor) {
    final colors = context.appTheme!.colors;

    const padding = TlSpaces.ph24v16;
    final fontColor = isBackgroundColor ? colors.whiteOnColor : colors.textContrast;

    return MediaContentBlockParams(
      text: MediaContentBlockParamsText(
        color: fontColor,
        padding: padding,
      ),
      image: const MediaContentBlockParamsImage(
        withBorderRadius: false,
      ),
      appeal: MediaContentBlockParamsInput(
        value: data.appeal,
        color: fontColor,
        padding: padding,
      ),
      signature: MediaContentBlockParamsInput(
        value: data.signature,
        color: fontColor,
        padding: padding,
      ),
    );
  }
}
