// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/business_card_db_repository.dart';

abstract class RemoveBusinessCardByIdUseCase {
  Future run(int id);
}

@LazySingleton(as: RemoveBusinessCardByIdUseCase, env: [Environment.dev, Environment.prod])
class RemoveBusinessCardByIdUseCaseImpl extends RemoveBusinessCardByIdUseCase {
  final BusinessCardDbRepository _repository;

  RemoveBusinessCardByIdUseCaseImpl(this._repository);

  @override
  Future run(int id) async {
    await _repository.delete(id);
  }
}
