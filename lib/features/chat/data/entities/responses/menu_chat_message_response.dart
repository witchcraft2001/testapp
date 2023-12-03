class MenuChatMessageResponse {
  final String title;
  final String id;

  MenuChatMessageResponse(this.title, this.id);

  MenuChatMessageResponse.fromMappedJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];
}

class MenuChatMessageResponseList {
  List<MenuChatMessageResponse> list = List.empty();

  MenuChatMessageResponseList(this.list);

  MenuChatMessageResponseList.fromMappedJson(List<dynamic>? json) {
    list = json == null
        ? List.empty()
        : json.map((e) => MenuChatMessageResponse.fromMappedJson(e)).toList();
  }
}
