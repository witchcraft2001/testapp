// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/greeting_cards/data/repositories/greeting_cards_repository.dart';

abstract class ClearCacheGreetingTemplatesUseCase implements ParamlessUseCase<void> {}

@Injectable(
  as: ClearCacheGreetingTemplatesUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheGreetingTemplatesUseCaseImpl extends ClearCacheGreetingTemplatesUseCase {
  final GreetingCardsRepository _cardsRepository;

  ClearCacheGreetingTemplatesUseCaseImpl(this._cardsRepository);

  @override
  void call([UseCaseParams params = const NoParams()]) {
    _cardsRepository.clearCache();
  }
}
