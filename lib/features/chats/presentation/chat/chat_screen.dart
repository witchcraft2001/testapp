// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/app_text_theme.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/widgets/balloon_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_avatar.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/checkboxes_form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/date_form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/menu_chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/message_ui.dart';
import 'package:terralinkapp/features/chats/domain/entities/select_form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/text_form_field_message.dart';
import 'package:terralinkapp/features/chats/presentation/chat/cubits/chat_cubit.dart';
import 'package:terralinkapp/features/chats/presentation/chat/cubits/chat_state.dart';
import 'package:terralinkapp/features/chats/presentation/chat/widgets/content_show/body/body_bottom_buttons.dart';
import 'package:terralinkapp/features/chats/presentation/chat/widgets/content_show/body/message/bot_answer_placeholder.dart';
import 'package:terralinkapp/features/chats/presentation/chat/widgets/content_show/body/message/form_checkbox_field.dart';
import 'package:terralinkapp/features/chats/presentation/chat/widgets/content_show/body/message/form_date_field.dart';
import 'package:terralinkapp/features/chats/presentation/chat/widgets/content_show/body/message/form_select_field.dart';
import 'package:terralinkapp/features/chats/presentation/chat/widgets/content_show/body/message/my_message.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/chat_message_shimmer.dart';
part 'shimmers/content_shimmer.dart';
part 'shimmers/content_shimmer_app_bar.dart';
part 'shimmers/content_shimmer_body.dart';
part 'widgets/content_show/body/body_bottom_field.dart';
part 'widgets/content_show/content_show.dart';
part 'widgets/content_show/content_show_app_bar.dart';
part 'widgets/content_show/body/body_bottom.dart';
part 'widgets/content_show/body/body_messages.dart';
part 'widgets/content_show/body/body_message.dart';
part 'widgets/content_error.dart';

class ChatScreen extends StatelessWidget {
  final String id;
  final int? serviceId;

  ChatScreen({
    super.key,
    required this.id,
    this.serviceId,
  });

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ChatCubit>()..init(id, serviceId),
      child: BlocConsumer<ChatCubit, ChatState>(
        listener: (_, state) {
          if (state is ShowChatState && _controller.text != state.text) {
            _controller.text = state.text;
            _controller.selection = TextSelection(
              baseOffset: state.text.length,
              extentOffset: state.text.length,
            );
          }
        },
        builder: (_, state) => switch (state) {
          InitState() => const _ContentShimmer(),
          ShowChatState() => _ContentShow(state: state, controller: _controller),
          LoadingErrorState(message: final message) => _ContentError(
              message: message,
              id: id,
            ),
        },
      ),
    );
  }
}
