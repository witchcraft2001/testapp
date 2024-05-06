part of '../../../greeting_cards_screen.dart';

class _Body extends StatelessWidget {
  final GlobalKey globalKey;
  final GreetingCardsReadyData data;

  const _Body({
    required this.data,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<GreetingCardsCubit>();

    if (data.templates.isEmpty) {
      return TlEmptyData(
        asset: TlAssets.imageNoGreetingCards,
        message: S.current.greetingCardsEmptyList,
        buttonTitle: S.current.btnRefresh,
        onRefresh: bloc.refresh,
        onPressed: bloc.refresh,
      );
    }

    return TlRefresh(
      onRefresh: bloc.refresh,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: _BodyTemplates(data: data),
            leading: const SizedBox(),
            backgroundColor: context.appTheme?.colors.bgForms,
            collapsedHeight: TlSizes.greetingsTemplateSize + TlSpaces.sp32,
            pinned: true,
          ),
          if (data.selected != null)
            SliverPadding(
              padding: TlSpaces.ph24b24,
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    _BodyFields(data: data),
                    _BodyPreview(globalKey: globalKey, data: data),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
