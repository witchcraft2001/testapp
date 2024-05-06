part of 'tl_markdown.dart';

SpanNodeGeneratorWithTag linkGeneratorWithTag = SpanNodeGeneratorWithTag(
  tag: 'a',
  generator: (e, config, _) => LinkNode(e.attributes, config.a),
);
