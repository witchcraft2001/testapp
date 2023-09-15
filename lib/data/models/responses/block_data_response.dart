class BlockDataResponse {
  final String id;
  final String title;
  final String value;
  final int sort;

  BlockDataResponse(this.id, this.title, this.value, this.sort);

  BlockDataResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        value = json['value'],
        sort = json['sort'];
}

class BlockDataResponseList {
  List<BlockDataResponse> list = List.empty();

  BlockDataResponseList(this.list);

  BlockDataResponseList.fromMappedJson(List<dynamic>? json) {
    list =
        json == null ? List.empty() : json.map((e) => BlockDataResponse.fromMappedJson(e)).toList();
  }
}
