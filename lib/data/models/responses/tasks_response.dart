// Project imports:
import 'task_response.dart';

class TasksResponse {
  final List<TaskResponse> results;

  TasksResponse(this.results);

  TasksResponse.fromMappedJson(Map<String, dynamic> json) :
      results = json['results'] == null ? List.empty() : TaskResponseList.fromMappedJson(json['results']).list;
}
