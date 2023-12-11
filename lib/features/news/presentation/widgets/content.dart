part of '../news_screen.dart';

const _endDate = 1705266000000; // 2024-01-15 00:00:00.000
final _isNotExpired = DateTime.now().millisecondsSinceEpoch < _endDate;

class _Content extends StatelessWidget {
  final NewsState data;

  const _Content({required this.data});

  @override
  Widget build(BuildContext context) {
    final news = TlRefresh(
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

    return _isNotExpired ? HolidaysSnowflakesWrapper(child: news) : news;
  }
}
