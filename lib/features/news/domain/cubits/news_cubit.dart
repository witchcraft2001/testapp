// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/news/data/use_cases/clear_cache_news_use_case.dart';
import 'package:terralinkapp/features/news/data/use_cases/get_all_news_use_case.dart';
import 'package:terralinkapp/features/news/domain/states/news_cubit_state.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class NewsCubit extends Cubit<NewsCubitState> {
  final GetNewsUseCase _getNewsUseCase;
  final ClearCacheNewsUseCase _clearCacheNewsUseCase;
  final LogService _logService;

  NewsCubit(
    this._getNewsUseCase,
    this._clearCacheNewsUseCase,
    this._logService,
  ) : super(const NewsCubitState.loading());

  NewsState _current = const NewsState();

  Future<void> init() async {
    emit(const NewsCubitState.loading());

    try {
      final news = await _getNewsUseCase.run();

      _current = _current.copyWith(news: news);

      emit(NewsCubitState.ready(_current));
    } catch (e, stackTrace) {
      _logService.recordError(e, stackTrace);

      emit(NewsCubitState.error(S.current.loadingError));
    }
  }

  Future<void> refresh() async {
    _clearCacheNewsUseCase.run();

    await init();
  }
}
