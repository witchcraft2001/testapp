part of 'media_content_block.dart';

class _MediaContentBlockSignatureWidget extends StatelessWidget {
  final MediaContentBlockParamsInput params;

  const _MediaContentBlockSignatureWidget({
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    if (params.value.isEmpty) return const SizedBox();

    return Padding(
      padding: params.padding,
      child: Text(
        params.value.isEmpty ? '<${S.current.greetingCardsSignature}>' : params.value,
        style: context.appTheme?.text.w700s18cWhite.copyWith(color: params.color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
