part of '../users_screen.dart';

class _ContentError extends StatelessWidget {
  final String message;
  final TlExceptionType type;

  const _ContentError({
    required this.message,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TlAppBar(),
      body: TlEmptyData(
        asset: exceptionAssets[type],
        message: message.isNotEmpty ? message : S.current.usersNotReady,
        buttonTitle: S.current.btnRetry,
        onPressed: context.bloc<UsersCubit>().init,
        onRefresh: context.bloc<UsersCubit>().init,
      ),
    );
  }
}
