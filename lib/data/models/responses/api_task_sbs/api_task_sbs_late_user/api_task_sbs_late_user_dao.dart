class ApiTaskSbsLateUserDao {
  final String? displayName, login, email;

  const ApiTaskSbsLateUserDao({
    this.displayName,
    this.email,
    this.login,
  });

  ApiTaskSbsLateUserDao.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        email = json['email'],
        login = json['login'];
}
