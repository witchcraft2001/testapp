part of '../chat_screen.dart';

class _ContentError extends StatelessWidget {
  final String message, id;

  const _ContentError({
    required this.message,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TlEmptyData(
              asset: TlAssets.exceptionNotFound,
              message: S.current.chatNoShow,
              buttonTitle: S.current.btnRetry,
              onPressed: () => context.bloc<ChatCubit>().init(id),
              onRefresh: () => context.bloc<ChatCubit>().init(id),
            ),
            Positioned(
              child: BackButton(
                color: colors?.brAndIcons,
                onPressed: () => appNavigationService.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
