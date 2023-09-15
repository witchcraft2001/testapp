// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/_unused/get_poll_by_id_use_case.dart';
import 'package:terralinkapp/domain/poll.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/screens/_unused/poll/poll_cubit.dart';
import 'package:terralinkapp/presentation/screens/_unused/poll/poll_state.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/app_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'package:terralinkapp/presentation/widgets/tl_checkbox.dart';

class PollScreen extends StatelessWidget {
  final int id;

  const PollScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PollCubit(getIt<GetPollByIdUseCase>()),
      child: _getScreen(context),
    );
  }

  Widget _getScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme?.appTheme.backgroundDashboardsForms,
      appBar: AppBar(
        backgroundColor: context.appTheme?.appTheme.accent,
        elevation: 0.0,
        toolbarHeight: 79.0,
        title: Text(
          S.current.pollTitle,
          maxLines: 1,
          style: ThemeProvider.titleLarge
              .copyWith(color: context.appTheme?.appTheme.whiteOnColor, fontSize: 20.0),
        ),
      ),
      body: SafeArea(
        child: BlocConsumer<PollCubit, PollState>(
          listener: (context, state) {},
          builder: (context, state) {
            return _getWidgetByState(context, state);
          },
        ),
      ),
    );
  }

  Widget _getWidgetByState(BuildContext context, PollState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const CenteredProgressIndicator(),
      ErrorState(message: var message) => ErrorMessage(
          message: message,
          button: AppButton(
            title: S.of(context).btnRetry,
            type: Type.secondary,
            onPressed: () {
              BlocProvider.of<PollCubit>(context).onInit(id);
            },
          ),
        ),
      ShowState(poll: var poll, isSendEnabled: var isSendEnabled) =>
        _getShowScreen(context, poll, isSendEnabled)
    };
  }

  Widget _getInitState(BuildContext context) {
    BlocProvider.of<PollCubit>(context).onInit(id);

    return const CenteredProgressIndicator();
  }

  Widget _getShowScreen(BuildContext context, Poll poll, bool isSendEnabled) {
    return Stack(
      children: [
        _getList(context, poll),
        Positioned(
          bottom: 15.0,
          left: 33.0,
          right: 33.0,
          child: AppButton(
            title: S.current.btnSend,
            type: Type.info,
            enabled: isSendEnabled,
          ),
        ),
      ],
    );
  }

  Widget _getList(BuildContext context, Poll poll) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 72.0),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              poll.title,
              style: ThemeProvider.bodyMedium.copyWith(
                color: context.appTheme?.appTheme.textMain,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          _getDescription(context, poll.description),
          _getCardFields(context, poll),
        ],
      ),
    );
  }

  Widget _getDescription(BuildContext context, String? description) {
    if (description == null || description.isEmpty) {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
      child: Text(
        description,
        style: ThemeProvider.bodyMedium
            .copyWith(color: context.appTheme?.appTheme.textMain, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _getCardFields(BuildContext context, Poll poll) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
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
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
          child: _getFields(context, poll),
        ),
      ),
    );
  }

  Widget _getFields(BuildContext context, Poll poll) {
    return switch (poll.id) {
      1 => _getFirstPollFields(context, poll),
      _ => _getSecondPollFields(context, poll),
    };
  }

  Widget _getFirstPollFields(BuildContext context, Poll poll) {
    TextEditingController controller = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Введите Ваш вопрос',
          style: ThemeProvider.bodySmall.copyWith(color: context.appTheme?.appTheme.textSignatures),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextField(
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: context.appTheme?.appTheme.textMain),
          controller: controller,
        ),
        const SizedBox(
          height: 8.0,
        ),
      ],
    );
  }

  Widget _getSecondPollFields(BuildContext context, Poll poll) {
    TextEditingController controller = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ваше ФИО',
          style: ThemeProvider.bodySmall.copyWith(color: context.appTheme?.appTheme.textSignatures),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextField(
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: context.appTheme?.appTheme.textMain),
          controller: controller,
        ),
        const SizedBox(
          height: 8.0,
        ),
        TlCheckbox(
          text: 'Нужно оформление командировки',
          value: false,
          onChanged: (_) => {},
        ),
        TlCheckbox(
          text: 'Нужна гостиница',
          value: true,
          onChanged: (_) => {},
        ),
      ],
    );
  }
}
