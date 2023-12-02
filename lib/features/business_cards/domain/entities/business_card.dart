// Project imports:
import 'business_card_locale.dart';

class BusinessCard {
  final int id;
  final String firstName;
  final String lastName;
  final String company;
  final String position;
  final String phone;
  final String email;
  final BusinessCardLocale locale;
  final DateTime time;

  BusinessCard(
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

  BusinessCard copy({
    int? id,
    String? firstName,
    String? lastName,
    String? company,
    String? position,
    String? phone,
    String? email,
    BusinessCardLocale? locale,
    DateTime? time,
  }) =>
      BusinessCard(
        id ?? this.id,
        firstName ?? this.firstName,
        lastName ?? this.lastName,
        company ?? this.company,
        position ?? this.position,
        phone ?? this.phone,
        email ?? this.email,
        locale ?? this.locale,
        time ?? this.time,
      );
}
