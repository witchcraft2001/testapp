part of '../chat_screen.dart';

class _ContentInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        height: TlSizes.appBarHeightChat,
        titleWidget: _ContentInitAppBar(),
      ),
      body: _ContentBodyInit(),
    );
  }
}

class _ContentInitAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.ph24,
      child: Text(
        S.current.update,
        style: ThemeProvider.bodySmall
            .copyWith(color: context.appTheme?.appTheme.bordersAndIconsIcons),
      ),
    );
  }
}

class _ContentBodyInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.bloc<ChatCubit>().onInit();

    return const CenteredProgressIndicator();
  }
}
