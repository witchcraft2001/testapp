// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message_vote.dart';
import 'package:terralinkapp/features/chats/presentation/chat/cubits/chat_cubit.dart';

class MyMessageVote extends StatelessWidget {
  final ChatMessage message;

  const MyMessageVote({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme!.colors;

    final vote = message.vote;
    final isNotVote = vote == null || vote.isEmpty;

    return Positioned(
      left: TlSpaces.sp16,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: TlDecoration.brBase,
          border: Border.all(color: colors.brAndIconsStrokes),
          color: isNotVote ? colors.color5 : colors.primary,
        ),
        child: Row(
          children: [
            _MyMessageVoteButton(
              message: message,
              assetName: TlAssets.iconVoteDislike,
              vote: isNotVote ? ChatMessageVote.dislike : null,
            ),
          ],
        ),
      ),
    );
  }
}

class _MyMessageVoteButton extends StatelessWidget {
  final String assetName;
  final ChatMessage message;
  final ChatMessageVote? vote;

  const _MyMessageVoteButton({
    required this.assetName,
    required this.message,
    this.vote,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme!.colors;

    return Material(
      borderRadius: TlDecoration.brBase,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        onTap: () => context.bloc<ChatCubit>().vote(message, vote),
        child: TlSvg(
          margin: TlSpaces.ph8v4,
          assetName: assetName,
          color: colors.whiteOnColor,
        ),
      ),
    );
  }
}
