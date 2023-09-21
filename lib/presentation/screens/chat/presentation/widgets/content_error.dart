part of '../chat_screen.dart';

class _ContentError extends StatelessWidget {
  final String message;

  const _ContentError({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorMessage(
        message: message,
        button: TlButton(
          title: S.current.btnRetry,
          onPressed: context.bloc<ChatCubit>().onInit,
        ),
      ),
    );
  }
}
