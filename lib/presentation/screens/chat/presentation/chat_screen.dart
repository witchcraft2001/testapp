// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/chat/domain/cubits/chat_cubit.dart';
import 'package:terralinkapp/presentation/screens/chat/domain/models/chat_state.dart';
import 'package:terralinkapp/presentation/screens/chat/domain/models/message_ui.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/body/body_bottom_buttons.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/body/message/form_checkbox_field.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/body/message/form_date_field.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/body/message/form_select_field.dart';
import 'package:terralinkapp/presentation/screens/chat/presentation/widgets/content_show/body/message/my_message.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/avatar.dart';
import 'package:terralinkapp/presentation/widgets/balloon_button.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';

part 'shimmers/chat_message_shimmer.dart';
part 'shimmers/content_shimmer.dart';
part 'shimmers/content_shimmer_app_bar.dart';
part 'shimmers/content_shimmer_body.dart';
part 'widgets/content_show/body/body_bottom_field.dart';
part 'widgets/content_show/content_show.dart';
part 'widgets/content_show/content_show_app_bar.dart';
part 'widgets/content_show/content_show_body.dart';
part 'widgets/content_show/body/body_bottom.dart';
part 'widgets/content_show/body/body_messages.dart';
part 'widgets/content_show/body/body_message.dart';
part 'widgets/content_error.dart';

class ChatScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ChatCubit>()..onInit(),
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
          LoadingErrorState(message: final message) => _ContentError(message: message),
        },
      ),
    );
  }
}
