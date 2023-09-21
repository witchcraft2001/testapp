// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/domain/chat_message.dart';
import 'package:terralinkapp/domain/checkboxes_form_field_message.dart';
import 'package:terralinkapp/domain/date_form_field_message.dart';
import 'package:terralinkapp/domain/menu_chat_message.dart';
import 'package:terralinkapp/domain/select_form_field_message.dart';
import 'package:terralinkapp/domain/text_form_field_message.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/chat/domain/models/message_ui.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/form_buttons_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/form_checkbox_field_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/form_date_field_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/form_select_field_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/form_text_field_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/my_message.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/avatar.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/chat_input_field.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import '../../../widgets/balloon_button.dart';
import '../domain/cubits/chat_cubit.dart';
import '../domain/models/chat_state.dart';

part 'widgets/content_init.dart';
part 'widgets/content_show/content_show.dart';
part 'widgets/content_show/content_show_app_bar.dart';
part 'widgets/content_show/content_show_body.dart';
part 'widgets/content_error.dart';

class ChatScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ChatCubit>(),
      child: _getChatScreen(context),
    );
  }

  Widget _getChatScreen(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatState>(
      listener: (context, state) {
        if (state is ShowChatState && _controller.text != state.text) {
          _controller.text = state.text;
          _controller.selection =
              TextSelection(baseOffset: state.text.length, extentOffset: state.text.length);
        }

        if (state is ShowChatState && state.isScrollDown) {
          Future.delayed(const Duration(milliseconds: 100))
              .then((value) => _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  ));
        }
      },
      builder: (_, state) => switch (state) {
        InitState() => _ContentInit(),
        ShowChatState() => _ContentShow(
            state: state,
            controller: _controller,
            scrollController: _scrollController,
          ),
        LoadingErrorState(message: final message) => _ContentError(message: message),
      },
    );
  }
}
