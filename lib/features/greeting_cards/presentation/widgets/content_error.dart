part of '../greeting_cards_screen.dart';

class _ContentError extends StatelessWidget {
  final String message;
  final TlExceptionType type;

  const _ContentError({
    required this.message,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return TlEmptyData(
      asset: exceptionAssets[type],
      message: message,
      buttonTitle: S.current.btnRetry,
      onPressed: context.bloc<GreetingCardsCubit>().refresh,
      onRefresh: context.bloc<GreetingCardsCubit>().refresh,
    );
  }
}
