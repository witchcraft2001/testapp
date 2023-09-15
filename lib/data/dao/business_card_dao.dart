class BusinessCardDao {
  static const String columnId = "id";
  static const String columnFirstName = "first_name";
  static const String columnLastName = "last_name";
  static const String columnCompany = "company";
  static const String columnPosition = "position";
  static const String columnPhone = "phone";
  static const String columnEmail = "email";
  static const String columnLocale = "locale";
  static const String columnTime = "time";

  final int id;
  final String firstName;
  final String lastName;
  final String company;
  final String position;
  final String phone;
  final String email;
  final String locale;
  final int time;

  BusinessCardDao(
    this.id,
    this.firstName,
    this.lastName,
    this.company,
    this.position,
    this.phone,
    this.email,
    this.locale,
    this.time,
  );

  BusinessCardDao.fromMap(Map<dynamic, dynamic> map)
      : id = map[columnId],
        firstName = map[columnFirstName],
        lastName = map[columnLastName],
        company = map[columnCompany],
        position = map[columnPosition],
        phone = map[columnPhone],
        email = map[columnEmail],
        locale = map[columnLocale],
        time = map[columnTime];

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      columnFirstName: firstName,
      columnLastName: lastName,
      columnCompany: company,
      columnPosition: position,
      columnPhone: phone,
      columnEmail: email,
      columnLocale: locale,
      columnTime: time,
    };
    if (id > 0) {
      map[columnId] = id;
    }

    return map;
  }
}
