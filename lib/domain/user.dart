// Dart imports:
import 'dart:convert';

class User {
  final String token;
  late String name;
  late String email;

  User(this.token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) {
        throw Exception('invalid token');
      }
      var output = parts[1].replaceAll('-', '+').replaceAll('_', '/');
      final quartet = output.length % 4;
      if (quartet > 0) {
        output = output.padRight(output.length + (4 - quartet), '=');
      }
      final payload = utf8.decode(base64Url.decode(output));
      final map = json.decode(payload);
      name = map['given_name'] ?? map['name'] ?? 'Unknown user';
      email = map['upn'] ?? map['unique_name'] ?? '';
    } on Exception catch (e, _) {
      name = '';
    }
  }
}
