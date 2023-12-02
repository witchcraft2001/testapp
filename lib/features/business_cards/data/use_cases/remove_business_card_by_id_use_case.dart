// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';

abstract class RemoveBusinessCardByIdUseCase {
  Future run(int id);
}

@LazySingleton(
  as: RemoveBusinessCardByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveBusinessCardByIdUseCaseImpl extends RemoveBusinessCardByIdUseCase {
  final BusinessCardRepository _repository;

  RemoveBusinessCardByIdUseCaseImpl(this._repository);

  @override
  Future run(int id) async {
    await _repository.delete(id);
  }
}
