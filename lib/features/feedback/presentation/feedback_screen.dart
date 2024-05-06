// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/features/feedback/domain/use_cases/send_feedback_use_case.dart';
import 'package:terralinkapp/features/feedback/presentation/cubits/feedback_cubit.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

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
              child: BlocBuilder<FeedbackCubit, String>(
                builder: (context, state) => Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: TlTextField(
                          autofocus: true,
                          label: S.current.feedbackTextLabel,
                          onChanged: context.bloc<FeedbackCubit>().change,
                          text: state,
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSend(BuildContext context) async {
    context.unfocus();

    final result = await context.bloc<FeedbackCubit>().send();

    if (context.mounted && result == NotificationSendingResult.error) {
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
