// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/data/use_cases/feedback/send_feedback_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/feedback/domain/cubits/feedback_cubit.dart';
import 'package:terralinkapp/presentation/screens/feedback/domain/states/feedback_cubit_state.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FeedbackCubit(getIt<SendFeedbackUseCase>()),
      child: GestureDetector(
        onTap: context.unfocus,
        child: Scaffold(
          appBar: TlAppBar(title: S.current.feedbackTitle),
          body: SafeArea(
            child: Padding(
              padding: TlSpaces.ph24v16,
              child: BlocBuilder<FeedbackCubit, FeedbackCubitState>(
                builder: (_, state) => state.when(
                  show: (feedback) => _FeedbackContent(
                    feedback: feedback,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FeedbackContent extends StatelessWidget {
  final FeedbackState feedback;

  const _FeedbackContent({
    required this.feedback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: TlTextField(
              autofocus: true,
              label: S.current.feedbackTextLabel,
              onChanged: context.bloc<FeedbackCubit>().change,
              text: feedback.message,
              minLines: 10,
            ),
          ),
        ),
        TlButton(
          padding: TlSpaces.pt16,
          title: S.current.btnSend,
          type: AppBtnType.secondary,
          onPressed: () => _handleSend(context),
        ),
      ],
    );
  }

  Future<void> _handleSend(BuildContext context) async {
    context.unfocus();

    final result = await context.bloc<FeedbackCubit>().send();

    if (context.mounted && result == FeedbackSendingResult.error) {
      showDialog<dynamic>(
        context: context,
        builder: (_) => TlDialogConfirm(
          message: S.current.feedbackSendingError,
          cancelTitle: S.current.btnClose,
        ),
      );
    }
  }
}
