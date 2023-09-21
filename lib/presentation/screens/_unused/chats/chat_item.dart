// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/avatar.dart';

class ChatItem extends StatelessWidget {
  final ChatFeed item;
  final ValueChanged<ChatFeed> onPressed;

  const ChatItem({super.key, required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final border = RoundedRectangleBorder(
      side: BorderSide.none,
      borderRadius: TlDecoration.brBase,
    );

    return Card(
      shadowColor: context.appTheme?.appTheme.shadow,
      color: context.appTheme?.appTheme.specialColorMenu,
      elevation: 6.0,
      margin: const EdgeInsets.all(1.0),
      shape: border,
      child: InkWell(
        customBorder: border,
        onTap: () => {onPressed(item)},
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Avatar(avatarUrl: item.avatar ?? '', size: AvatarSize.s),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                item.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                style: ThemeProvider.titleSmall
                                    .copyWith(color: context.appTheme?.appTheme.textMain),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                item.lastMessageTime.toSmartDateTimeString(),
                                textAlign: TextAlign.start,
                                style: ThemeProvider.labelSmall
                                    .copyWith(color: context.appTheme?.appTheme.textSignatures),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  item.lastMessage ?? S.current.noMessages,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: ThemeProvider.bodySmall
                                      .copyWith(color: context.appTheme?.appTheme.textMain),
                                  maxLines: 2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: _getUnreadCountWidget(context, item.unreadMessagesCount),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getUnreadCountWidget(BuildContext context, int unreadMessagesCount) {
    return SizedBox(
      width: 65.0,
      child: Align(
        alignment: Alignment.topRight,
        child: (unreadMessagesCount > 0)
            ? IntrinsicWidth(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: AppColors.accent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                          child: Text(
                            unreadMessagesCount.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.textOnPrimary),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(),
      ),
    );
    // if (unreadMessagesCount > 0) {
    //   return Container(
    //     decoration: const BoxDecoration(
    //       borderRadius: BorderRadius.all(Radius.circular(13.0)),
    //       color: AppColors.accent,
    //     ),
    //     child: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(left: 4.0, right: 4.0),
    //             child: Text(
    //               unreadMessagesCount.toString(),
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .titleMedium
    //                   ?.copyWith(color: AppColors.textOnPrimary),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   );
    // } else {
    //   return Container();
    // }
  }
}
