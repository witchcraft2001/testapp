// Package imports:
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/news/clear_cache_news_use_case.dart';
import 'package:terralinkapp/data/use_cases/news/get_all_news_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/news/domain/states/news_screen_state.dart';
import 'package:terralinkapp/presentation/screens/news/domain/states/news_state.dart';

@injectable
class NewsCubit extends Cubit<NewsScreenState> {
  final GetNewsUseCase _getNewsUseCase;
  final ClearCacheNewsUseCase _clearCacheNewsUseCase;

  NewsCubit(
    this._getNewsUseCase,
    this._clearCacheNewsUseCase,
  ) : super(const NewsScreenState.loading());

  NewsState _home = const NewsState();

  Future<void> init() async {
    emit(const NewsScreenState.loading());

    try {
      final news = await _getNewsUseCase.run();

      _home = _home.copyWith(news: news);

      emit(NewsScreenState.loaded(_home));
    } catch (e, stackTrace) {
      await FirebaseCrashlytics.instance.recordError(e, stackTrace);

      emit(NewsScreenState.error(S.current.loadingError));
    }
  }

  Future<void> refresh() async {
    _clearCacheNewsUseCase.run();

    await init();
  }
}
