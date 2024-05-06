// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:html/dom.dart' as html;
import 'package:html/dom_parsing.dart';
import 'package:html/parser.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:markdown_widget/markdown_widget.dart';

// Project imports:
import 'package:terralinkapp/core/common/regexp.dart';
import 'package:terralinkapp/core/theme/data/app_text_theme.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/utils/links.dart';

part 'tl_markdown_list_marker.dart';
part 'tl_markdown_tree_visitor.dart';
part 'tl_markdown_element_node.dart';
part 'tl_markdown_parse_html.dart';
part 'tl_markdown_generators.dart';

class TlMarkdown extends StatelessWidget {
  final String data;
  final List<WidgetConfig>? configs;
  final bool isSelectable;

  const TlMarkdown({
    super.key,
    required this.data,
    this.configs,
    this.isSelectable = true,
  });

  @override
  Widget build(BuildContext context) {
    final texts = context.appTheme!.text;
    final colors = context.appTheme!.colors;

    return MarkdownBlock(
      data: data,
      selectable: isSelectable,
      config: MarkdownConfig(
        configs: configs ??
            [
              PreConfig(
                margin: TlSpaces.pv8,
                padding: TlSpaces.p16,
                decoration: BoxDecoration(
                  borderRadius: TlDecoration.brS,
                  color: colors.bgForms,
                ),
              ),
              PConfig(textStyle: texts.w400s14cMain),
              LinkConfig(
                style: texts.w700s14cPrimary.copyWith(decoration: TextDecoration.underline),
                onTap: (url) => goToUrlOrEmail(context, url),
              ),
              ListConfig(
                marginLeft: TlSpaces.sp24,
                marginBottom: TlSpaces.sp4,
                marker: (isOrdered, depth, index) => _TlMarkdownListMarker(
                  isOrdered: isOrdered,
                  depth: depth,
                  index: index,
                ),
              ),
            ],
      ),
      generator: MarkdownGenerator(
        generators: [
          linkGeneratorWithTag,
        ],
        textGenerator: (node, config, visitor) => TlMarkdownElementNode(
          node.textContent,
          config,
          visitor,
          context,
        ),
      ),
    );
  }
}
