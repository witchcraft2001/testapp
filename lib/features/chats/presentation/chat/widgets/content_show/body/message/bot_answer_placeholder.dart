// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';

// Project imports:
// import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
// import 'package:terralinkapp/generated/l10n.dart';

class BotAnswerPlaceholder extends StatelessWidget {
  const BotAnswerPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final text = context.appTheme?.text;
    final colors = context.appTheme?.colors;

    final border = Border.all(
      color: colors?.brAndIconsStrokes ?? appColorsThemeLight.brAndIconsStrokes,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ToDo текстовое сообщение пока отключено
        // Padding(
        //   padding: TlSpaces.pb4,
        //   child: Align(
        //     alignment: Alignment.topLeft,
        //     child: ConstrainedBox(
        //       constraints: const BoxConstraints(
        //         minWidth: TlSizes.chatMinWidth,
        //         maxWidth: TlSizes.chatMaxWidth,
        //       ),
        //       child: IntrinsicWidth(
        //         child: Container(
        //           decoration: BoxDecoration(
        //             color: colors?.bgMenu,
        //             border: border,
        //             borderRadius: const BorderRadius.only(
        //               topLeft: TlDecoration.rChatMessage,
        //               topRight: TlDecoration.rChatMessage,
        //               bottomLeft: Radius.zero,
        //               bottomRight: TlDecoration.rChatMessage,
        //             ),
        //           ),
        //           child: Padding(
        //             padding: TlSpaces.ph16v8,
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 Padding(
        //                   padding: TlSpaces.pr8,
        //                   child: Text(S.current.chatAnswerPlaceholder, style: text?.w400s14cMain),
        //                 ),
        //                 Container(
        //                   alignment: Alignment.bottomRight,
        //                   child: Text(
        //                     DateTime.now().toTimeString(),
        //                     style: text?.w400s13cSignatures,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Container(
          margin: TlSpaces.pb4,
          width: TlSizes.shimmerChatMessageBase,
          height: TlSizes.shimmerChatAnswer,
          decoration: BoxDecoration(
            color: colors?.bgMenu,
            border: border,
            borderRadius: const BorderRadius.all(TlDecoration.rChatMessage),
          ),
          child: _BotAnswerPlaceholderShimmer(),
        ),
      ],
    );
  }
}

class _BotAnswerPlaceholderShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TlShimmer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => const TlShimmerContent(
            width: 8,
            height: 8,
            margin: TlSpaces.p2,
          ),
        ),
      ),
    );
  }
}
