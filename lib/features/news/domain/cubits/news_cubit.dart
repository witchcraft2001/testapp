// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/news/domain/states/news_cubit_state.dart';
import 'package:terralinkapp/features/news/domain/use_cases/clear_cache_news_use_case.dart';
import 'package:terralinkapp/features/news/domain/use_cases/get_all_news_use_case.dart';

@injectable
class NewsCubit extends Cubit<NewsCubitState> {
  final GetNewsUseCase _getNewsUseCase;
  final ClearCacheNewsUseCase _clearCacheNewsUseCase;

  NewsCubit(
    this._getNewsUseCase,
    this._clearCacheNewsUseCase,
  ) : super(const NewsCubitState.loading());

  NewsState _current = const NewsState();

  Future<void> init() async {
    emit(const NewsCubitState.loading());

    try {
      final news = await _getNewsUseCase();

      _current = _current.copyWith(news: news);

      emit(NewsCubitState.ready(_current));
    } catch (e) {
      final type = e is TlException ? e.type : TlExceptionType.other;
      final message = exceptionTranslations[type];

      emit(NewsCubitState.error(message ?? '', type));
    }
  }

  Future<void> refresh() async {
    await _clearCacheNewsUseCase();

    await init();
  }
}
