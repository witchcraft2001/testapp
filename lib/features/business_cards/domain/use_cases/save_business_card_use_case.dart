// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/use_cases/params/business_card_use_case_params.dart';

abstract class SaveBusinessCardUseCase
    implements AsyncParamfullUseCase<BusinessCard, BusinessCardUseCaseParams> {}

@LazySingleton(
  as: SaveBusinessCardUseCase,
  env: [Environment.dev, Environment.prod],
)
class SaveBusinessCardUseCaseImpl extends SaveBusinessCardUseCase {
  final BusinessCardRepository _repository;

  SaveBusinessCardUseCaseImpl(this._repository);

  @override
  Future<BusinessCard> call(BusinessCardUseCaseParams params) async {
    if (params.card.id > 0) {
      await _repository.update(params.card);

      return params.card;
    }

    final id = await _repository.create(params.card);

    return params.card.copy(id: id);
  }
}
