part of '../onboarding_content_block.dart';

const _linkDecoration = TextDecoration.underline;

enum ContentType { text, textBold, link, linkBold }

class _OnboardingContentBlockRichTextParagraph extends StatelessWidget {
  final List<ContentRichTextElement> items;
  final OnboardingContentBlockParamsText? params;

  const _OnboardingContentBlockRichTextParagraph({
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
          style: _getTextStyle(context, ContentType.text),
        ),
      ],
      textBold: (text) => [
        TextSpan(
          text: text,
          style: _getTextStyle(context, ContentType.textBold),
        ),
      ],
      link: (text, link) => [
        TextSpan(
          text: text,
          style: _getTextStyle(context, ContentType.link),
          recognizer: (TapGestureRecognizer()..onTap = () => goToUrlOrEmail(context, link)),
        ),
      ],
      linkBold: (text, link) => [
        TextSpan(
          text: text,
          style: _getTextStyle(context, ContentType.linkBold),
          recognizer: (TapGestureRecognizer()..onTap = () => goToUrlOrEmail(context, link)),
        ),
      ],
      paragraph: (children) => _contextElementsToTextSpans(context, children),
      orElse: () => [],
    );
  }

  TextStyle? _getTextStyle(BuildContext context, ContentType? contentType) {
    final text = context.appTheme?.text;

    final styles = {
      ContentType.text: text?.w400s17cMain.copyWith(color: params?.color),
      ContentType.textBold: text?.w700s17cMain.copyWith(color: params?.color),
      ContentType.link: text?.w400s17cPrimary.copyWith(decoration: _linkDecoration),
      ContentType.linkBold: text?.w700s17cPrimary.copyWith(decoration: _linkDecoration),
    };

    return styles[contentType] ?? styles[ContentType.text];
  }
}
