class ButtonFormItemMessageResponse {
  final String id;
  final String title;
  final String type;
  final bool hidden;

  ButtonFormItemMessageResponse(this.id, this.title, this.type, this.hidden);

  ButtonFormItemMessageResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        type = json['type'],
        hidden = json['hidden'];
}

class ButtonFormItemListMessageResponse {
  final List<ButtonFormItemMessageResponse> list;

  ButtonFormItemListMessageResponse(this.list);

  ButtonFormItemListMessageResponse.fromMappedJson(List<dynamic>? json)
      : list = json == null
            ? List.empty()
            : json.map((e) => ButtonFormItemMessageResponse.fromMappedJson(e)).toList();
}
