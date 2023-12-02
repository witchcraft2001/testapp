// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/summary/data/dao/api_task_summary_dao.dart';
import 'package:terralinkapp/features/tasks/summary/data/data_sources/tasks_summary_remote_data_source.dart';

abstract class TasksSummaryCachedDataSource {
  Future<List<ApiTaskSummaryDao>> getSummary();
  void clearCacheLate();
}

@LazySingleton(
  as: TasksSummaryCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksSummaryCachedDataSourceImpl extends TasksSummaryCachedDataSource {
  final TasksSummaryRemoteDataSource _summaryRepository;
  final Lock _lock = Lock();

  final List<ApiTaskSummaryDao> _summaries = List.empty(growable: true);
  DateTime? _lastUpdates;

  TasksSummaryCachedDataSourceImpl(this._summaryRepository);

  @override
  Future<List<ApiTaskSummaryDao>> getSummary() async {
    if (_summaries.isEmpty && _lastUpdates == null) {
      await _lock.synchronized(() async {
        if (_summaries.isEmpty && _lastUpdates == null) {
          final summaries = await _summaryRepository.getSummary();

          _summaries.addAll(summaries);
          _lastUpdates = DateTime.now();
        }
      });
    }

    return _summaries;
  }

  @override
  void clearCacheLate() {
    _summaries.clear();
    _lastUpdates = null;
  }
}
