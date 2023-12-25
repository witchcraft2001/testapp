class HolidaysCardData {
  final String subject, appeal, address;

  HolidaysCardData({
    this.subject = 'С Новым 2024 годом!',
    this.appeal = '',
    this.address = '',
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
