part of '../media_content_block.dart';

const _linkDecoration = TextDecoration.underline;

class _MediaContentBlockRichTextParagraph extends StatelessWidget {
  final List<ContentRichTextElement> items;
  final MediaContentBlockParamsText? params;

  const _MediaContentBlockRichTextParagraph({
    required this.items,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: _contextElementsToTextSpans(context, items),
      ),
    );
  }

  List<TextSpan> _contextElementsToTextSpans(
    BuildContext context,
    List<ContentRichTextElement> items,
  ) {
    final List<TextSpan> spans = List.empty(growable: true);

    for (int i = 0; i < items.length; i++) {
      final ContentRichTextElement current = items[i];

      final List<TextSpan> textSpans = _textSpanFromContentRichTextElement(current, context);

      spans.addAll(textSpans);
    }

    return spans;
  }

  List<TextSpan> _textSpanFromContentRichTextElement(
    ContentRichTextElement element,
    BuildContext context,
  ) {
    return element.maybeWhen(
      text: (text) => [
        TextSpan(
          text: text,
          style: _getTextStyle(context, AppTagContentType.text),
        ),
      ],
      textBold: (text) => [
        TextSpan(
          text: text,
          style: _getTextStyle(context, AppTagContentType.textBold),
        ),
      ],
      link: (text, link) => [
        TextSpan(
          text: text,
          style: _getTextStyle(context, AppTagContentType.link),
          recognizer: (TapGestureRecognizer()..onTap = () => _handleOpenUrl(context, link)),
        ),
      ],
      linkBold: (text, link) => [
        TextSpan(
          text: text,
          style: _getTextStyle(context, AppTagContentType.linkBold),
          recognizer: (TapGestureRecognizer()..onTap = () => _handleOpenUrl(context, link)),
        ),
      ],
      paragraph: (children) => _contextElementsToTextSpans(context, children),
      orElse: () => [],
    );
  }

  Future<void> _handleOpenUrl(BuildContext context, String link) async {
    if (link.startsWith('http')) {
      return await launchURL(link);
    }

    if (link.contains(TlChars.at)) {
      return _handleOpenEmail(context, link);
    }

    // ToDo есть ограничения по навигаци из-за передачи данных в виджеты (например, данные самой стори) или динамических id (id чата с ботом, например, у каждого пользователя свой)
    if (link.startsWith(Constants.deeplinkScheme)) {
      final uri = Uri.parse(link);

      return appNavigationService.go(
        context,
        uri.path,
        extra: uri.queryParameters,
      );
    }
  }

  Future<void> _handleOpenEmail(BuildContext context, String link) async {
    final result = await getIt<SendEmailUseCase>().call(SendEmailUseCaseParams(link));

    if (context.mounted && result == NotificationSendingResult.error) {
      showDialog<dynamic>(
        context: context,
        builder: (_) => TlDialogConfirm(
          message: S.current.feedbackSendingError,
          cancelTitle: S.current.btnClose,
        ),
      );
    }
  }

  TextStyle? _getTextStyle(BuildContext context, AppTagContentType? contentType) {
    final text = context.appTheme?.text;

    final styles = {
      AppTagContentType.text: text?.w400s17cMain.copyWith(color: params?.color),
      AppTagContentType.textBold: text?.w700s17cMain.copyWith(color: params?.color),
      AppTagContentType.link: text?.w400s17cPrimary.copyWith(decoration: _linkDecoration),
      AppTagContentType.linkBold: text?.w700s17cPrimary.copyWith(decoration: _linkDecoration),
    };

    return styles[contentType] ?? styles[AppTagContentType.text];
  }
}
