class SelectFieldItemMessageResponse {
  final String id;
  final String title;
  final int sortId;
  final bool selected;

  SelectFieldItemMessageResponse(this.id, this.title, this.sortId, this.selected);

  SelectFieldItemMessageResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        selected = json['selected'],
        sortId = json['sort_id'];
}

class SelectFieldItemListMessageResponse {
  final List<SelectFieldItemMessageResponse> list;

  SelectFieldItemListMessageResponse(this.list);

  SelectFieldItemListMessageResponse.fromMappedJson(List<dynamic>? json)
      : list = json == null
            ? List.empty()
            : json.map((e) => SelectFieldItemMessageResponse.fromMappedJson(e)).toList();
}
