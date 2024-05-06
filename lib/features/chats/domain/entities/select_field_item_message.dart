class SelectFieldItemMessage {
  final String id;
  final String title;
  final int sortId;
  final bool selected;

  SelectFieldItemMessage(this.id, this.title, this.sortId, this.selected);

  @override
  bool operator ==(Object other) =>
      other is SelectFieldItemMessage && other.id == id && other.title == title;

  @override
  int get hashCode => title.hashCode + id.hashCode;

}
