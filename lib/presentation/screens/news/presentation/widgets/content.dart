part of '../news_screen.dart';

class _Content extends StatelessWidget {
  final NewsState data;

  const _Content({required this.data});

  @override
  Widget build(BuildContext context) {
    return TlRefresh(
      onRefresh: context.bloc<NewsCubit>().refresh,
      child: ListView.builder(
        key: PageStorageKey(AppRoutes.news.name),
        padding: TlSpaces.ph24,
        itemCount: data.news.length,
        itemBuilder: (_, index) => _ContentCard(
          item: data.news[index],
        ),
      ),
    );
  }
}
