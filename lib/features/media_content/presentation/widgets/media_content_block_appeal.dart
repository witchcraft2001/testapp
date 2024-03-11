part of 'media_content_block.dart';

class _MediaContentBlockAppealWidget extends StatelessWidget {
  final MediaContentBlockParamsInput params;

  const _MediaContentBlockAppealWidget({
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: params.padding,
      child: Text(
        params.value.isEmpty ? '<${S.current.greetingCardsAppeal}>' : params.value,
        style: context.appTheme?.text.w700s20cWhite.copyWith(color: params.color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
