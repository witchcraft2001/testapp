// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart';
import 'package:terralinkapp/domain/chat_message.dart';
import 'package:terralinkapp/domain/checkboxes_form_field_message.dart';
import 'package:terralinkapp/domain/date_form_field_message.dart';
import 'package:terralinkapp/domain/menu_chat_message.dart';
import 'package:terralinkapp/domain/select_form_field_message.dart';
import 'package:terralinkapp/domain/text_form_field_message.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/chat/models/message_ui.dart';
import 'package:terralinkapp/presentation/screens/chat/my_message.dart';
import 'package:terralinkapp/presentation/screens/chat/widgets/form_buttons_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/widgets/form_checkbox_field_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/widgets/form_date_field_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/widgets/form_select_field_widget.dart';
import 'package:terralinkapp/presentation/screens/chat/widgets/form_text_field_widget.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/avatar.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/chat_input_field.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import '../../widgets/balloon_button.dart';
import 'chat_cubit.dart';
import 'chat_state.dart';

class ChatScreen extends StatelessWidget {
  final String id;

  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  ChatScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(
        id,
        getIt<GetChatInfoByIdUseCase>(),
        getIt<GetAllMessagesByChatIdUseCase>(),
        getIt<ChatsRepository>(),
        getIt<UserService>(),
        getIt<SendChatMessageUseCase>(),
        getIt<SendMenuItemChatMessageUseCase>(),
        getIt<ResetNewMessagesUseCase>(),
        getIt<RemoveMessageByIdUseCase>(),
        getIt<SendFormChatMessageUseCase>(),
        getIt<LogService>(),
      ),
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
      builder: (context, state) {
        return _getChatByState(context, state);
      },
    );
  }

  Widget _getChatByState(BuildContext context, ChatState state) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: context.appTheme?.appTheme.backgroundWidgetHeader,
        elevation: 0.0,
        toolbarHeight: 79.0,
        foregroundColor: context.appTheme?.appTheme.bordersAndIconsIcons,
        title: _getTitle(context, state),
      ),
      backgroundColor: context.appTheme?.appTheme.backgroundDashboardsForms,
      body: SafeArea(child: _getState(context, state)),
    );
  }

  Widget _getState(BuildContext context, ChatState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingErrorState(message: var message) => ErrorMessage(
          message: message,
          button: TlButton(
            title: S.current.btnRetry,
            onPressed: () => context.bloc<ChatCubit>().onInit,
          ),
        ),
      ShowChatState() => _getBody(context, state),
    };
  }

  Widget _getInitState(BuildContext context) {
    BlocProvider.of<ChatCubit>(context).onInit(id);

    return const CenteredProgressIndicator();
  }

  Widget _getTitle(BuildContext context, ChatState state) {
    if (state is InitState || state is ShowChatState && state.isLoading) {
      return Text(
        S.current.update,
        style: ThemeProvider.bodySmall
            .copyWith(color: context.appTheme?.appTheme.bordersAndIconsIcons),
      );
    } else if (state is ShowChatState) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(
            avatarUrl: state.avatar ?? '',
            size: AvatarSize.m,
          ),
          const SizedBox(
            width: 12.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.name,
                style:
                    ThemeProvider.bodyMedium.copyWith(color: context.appTheme?.appTheme.textMain),
              ),
              const SizedBox(
                height: 4.0,
              ),
              _getStatus(context, state.isOnline),
            ],
          ),
        ],
      );
    }

    return Container();
  }

  Widget _getStatus(BuildContext context, bool isOnline) {
    final color =
        isOnline ? context.appTheme?.appTheme.predictors7 : context.appTheme?.appTheme.danger;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 6.0,
          width: 6.0,
          decoration: BoxDecoration(
            border: Border.all(color: color ?? AppColors.predictors7, width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(3)),
            color: color,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          isOnline ? S.current.online : S.current.offline,
          style: ThemeProvider.bodyMedium.copyWith(color: color, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _getBody(BuildContext context, ShowChatState state) {
    if (state.isLoading) {
      return const CenteredProgressIndicator();
    }

    return Column(
      children: [
        _getMessageList(context, state, _scrollController),
        _getBottomForm(context, state),
      ],
    );
  }

  Widget _getMessageList(BuildContext context, ShowChatState state, ScrollController controller) {
    return Flexible(
      child: ListView.builder(
        controller: controller,
        padding: TlSpaces.ph24v12,
        itemCount: state.messages.length,
        itemBuilder: (context, index) {
          return switch (state.messages[index]) {
            DateMessageUi(date: var date) => _getDate(context, date),
            MyMessageUi(message: var message, isFirst: var isFirst) =>
              _getMessage(message, true, isFirst),
            SomeOneElseMessageUi(message: var message, isFirst: var isFirst) =>
              _getMessage(message, false, isFirst),
            BotButtonsMessageUi(
              buttons: var buttons,
              activeButton: var activeButton,
              message: var message
            ) =>
              _getButtons(context, message, buttons, activeButton),
            FormMessageUi(message: var message) => _getForm(context, message),
            // SickDayFormMessageUi(message: var message) => _getForm(context, '/sickday'),
          };
        },
      ),
    );
  }

  Widget _getMessage(ChatMessage message, bool isMyMessage, bool isFirst) {
    return MyMessage(
      key: Key('${message.chatId}-${message.messageId}'),
      message: message,
      isMyMessage: isMyMessage,
      isPaddingNeed: isFirst,
    );
  }

  Widget _getDate(BuildContext context, String date) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 14.0),
      child: Container(
        alignment: Alignment.topCenter,
        child: Text(
          date,
          style: ThemeProvider.labelSmall.copyWith(color: AppColors.textSignatures),
        ),
      ),
    );
  }

  Widget _getButtons(
    BuildContext context,
    ChatMessage message,
    List<MenuChatMessage> buttons,
    String activeButton,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getChildrenButton(context, message, buttons, activeButton),
    );
  }

  List<Widget> _getChildrenButton(
    BuildContext context,
    ChatMessage message,
    List<MenuChatMessage> buttons,
    String activeButton,
  ) {
    final list = List<Widget>.of([], growable: true);
    for (var element in buttons) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: IntrinsicWidth(
          child: BalloonButton(
            text: element.title,
            command: element.id,
            isSelected: element.id == activeButton,
            onPressed: (String value) {
              if (activeButton.isEmpty) {
                BlocProvider.of<ChatCubit>(context)
                    .onSendSelectedMenu(message.clientMessageId, value);
              }
            },
          ),
        ),
      ));
    }

    return list;
  }

  Widget _getForm(BuildContext context, ChatMessage message) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
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
          padding: TlSpaces.ph20v12,
          child: _getFormFields(context, message),
        ),
      ),
    );
  }

  Widget _getFormFields(BuildContext context, ChatMessage message) {
    final List<Widget> items = [];
    // items.add(Text(
    //   message.form?.title ?? '',
    //   style: ThemeProvider.bodySmall.copyWith(color: AppColors.textSignatures),
    // ));
    // items.add(const SizedBox(
    //   height: 8.0,
    // ));

    for (var element in message.form!.fields) {
      if (element is TextFormFieldMessage) {
        items.add(FormTextFieldWidget(
          form: message.form!,
          title: element.title,
          id: element.id,
          subtitle: element.description,
          onChanged: (value) {
            BlocProvider.of<ChatCubit>(context).onChangedFormText(message, element.id, value);
          },
        ));
      } else if (element is CheckboxesFormFieldMessage) {
        items.add(FormCheckboxFieldWidget(
          form: message.form!,
          id: element.id,
          title: element.title,
          onChanged: (value) {
            //todo: Спросить у архитектора, как правильно отправить чекбоксы
            BlocProvider.of<ChatCubit>(context).onChangedCheckboxValue(message, value.id, value);
          },
          item: element,
        ));
      } else if (element is SelectFormFieldMessage) {
        items.add(FormSelectFieldWidget(
          form: message.form!,
          id: element.id,
          title: element.title,
          item: element,
          onChanged: (value) {
            BlocProvider.of<ChatCubit>(context).onChangedSelectValue(message, element.id, value);
          },
        ));
      } else if (element is DateFormFieldMessage) {
        items.add(FormDateFieldWidget(
          form: message.form!,
          title: element.title,
          id: element.id,
          subtitle: element.description,
          onChanged: (value) {
            BlocProvider.of<ChatCubit>(context).onChangedFormDate(message, element.id, value);
          },
        ));
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items,
    );
  }

  Widget _getBottomForm(
    BuildContext context,
    ShowChatState state,
  ) {
    if (state.isInputFieldVisible) {
      return ChatInputField(
        controller: _controller,
        text: state.text,
        onChanged: (text) {
          BlocProvider.of<ChatCubit>(context).onUpdateText(text);
        },
        onSendClicked: () {
          BlocProvider.of<ChatCubit>(context).onSendClicked();
        },
      );
    } else if (state.isSendFormVisible) {
      final buttons = state.activeForm;

      if (buttons != null) {
        return FormButtonsWidget(
          buttons: buttons.message.form!.buttons,
          form: buttons.message.form!,
          onButtonPressed: (button) {
            BlocProvider.of<ChatCubit>(context).onFormButtonPressed(button);
          },
        );
      }

      return Container();
    } else {
      return Container();
    }
  }
}
