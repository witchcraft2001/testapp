// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/domain/event_feed_item.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/ellipse_item.dart';

class EventWidget extends StatelessWidget {
  final EventFeedItem item;

  const EventWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        height: 122,
        width: 251,
        child: Card(
          shadowColor: context.appTheme?.appTheme.shadow,
          color: context.appTheme?.appTheme.specialColorMenu,
          elevation: 6.0,
          margin: const EdgeInsets.all(1.0),
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: TlDecoration.brBase,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 14.0, left: 14.0, top: 12.0, bottom: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EllipseItem(
                      color: item.color,
                      child: SvgPicture.asset('assets/images/ic_voice_16.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        S.of(context).eventTitle,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: item.color),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 3.0),
                  child: Text(
                    item.title,
                    style: ThemeProvider.bodyMedium.copyWith(
                      color: context.appTheme?.appTheme.textMain,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Text(
                  item.subtitle,
                  style: ThemeProvider.labelMedium
                      .copyWith(color: context.appTheme?.appTheme.textSignatures),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
