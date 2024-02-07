part of '../chat_screen.dart';

class _ContentError extends StatelessWidget {
  final String message;

  const _ContentError({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TlEmptyData(
        asset: TlAssets.exceptionNotFound,
        message: S.current.chatNoShow,
        buttonTitle: S.current.btnRetry,
        onPressed: context.bloc<ChatCubit>().onInit,
        onRefresh: context.bloc<ChatCubit>().onInit,
      ),
    );
  }
}
