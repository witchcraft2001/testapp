// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_summary_cached_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_summary/api_task_summary_dao_mapper.dart';
import 'package:terralinkapp/domain/entities/api_task_summary/api_task_summary.dart';

abstract class GetTasksSummaryUseCase {
  Future<List<ApiTaskSummary>> run();
}

@LazySingleton(
  as: GetTasksSummaryUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTasksSummaryUseCaseImpl extends GetTasksSummaryUseCase {
  final TasksSummaryCachedDataSource _summaryRepository;

  GetTasksSummaryUseCaseImpl(this._summaryRepository);

  @override
  Future<List<ApiTaskSummary>> run() async {
    final summaries = await _summaryRepository.getSummary();

    return summaries.map((summary) => summary.toDomain()).toList();
  }
}
