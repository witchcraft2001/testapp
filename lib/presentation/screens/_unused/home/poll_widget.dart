// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/domain/poll_feed_item.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/app_button.dart';

typedef PollCallback = void Function(PollFeedItem);

class PollWidget extends StatelessWidget {
  final PollFeedItem item;
  final PollCallback onPressed;

  const PollWidget({super.key, required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final border = RoundedRectangleBorder(
      side: BorderSide.none,
      borderRadius: TlDecoration.brBase,
    );

    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        height: 136,
        width: 311,
        child: Card(
          shadowColor: context.appTheme?.appTheme.shadow,
          color: context.appTheme?.appTheme.specialColorMenu,
          elevation: 6.0,
          margin: const EdgeInsets.all(1.0),
          shape: border,
          child: InkWell(
            customBorder: border,
            onTap: () => {onPressed(item)},
            child: Padding(
              padding: const EdgeInsets.only(right: 17.0, left: 17.0, top: 14.0, bottom: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      item.title,
                      style: ThemeProvider.bodyMedium
                          .copyWith(color: context.appTheme?.appTheme.textMain),
                      maxLines: 3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppButton(
                        style: Style.base,
                        type: Type.info,
                        size: Size.small,
                        title: S.current.takeSurvey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
