class ApiTaskSbsLateUserDao {
  final String displayName, login, email;

  const ApiTaskSbsLateUserDao({
    required this.displayName,
    required this.email,
    required this.login,
  });

  ApiTaskSbsLateUserDao.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        email = json['email'],
        login = json['login'];
}
