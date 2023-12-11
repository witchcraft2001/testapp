class HolidaysCardData {
  final String subject, appeal, address;

  HolidaysCardData({
    this.subject = 'Новогоднее мероприятие ТерраЛинк 22.12.2023',
    this.appeal = '',
    this.address = '\nАдрес мероприятия: https://yandex.ru/navi/-/CCUaR4BJlC\n',
  });

  HolidaysCardData copyWith({
    String? subject,
    String? appeal,
    String? address,
  }) =>
      HolidaysCardData(
        subject: subject ?? this.subject,
        appeal: appeal ?? this.appeal,
        address: address ?? this.address,
      );
}
