class ApiTaskEasBlockDataValueDao {
  final String name;
  final String? extension;
  final String? url;

  ApiTaskEasBlockDataValueDao({
    required this.name,
    this.extension,
    this.url,
  });

  ApiTaskEasBlockDataValueDao.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        extension = json['extension'],
        url = json['url'];
}
