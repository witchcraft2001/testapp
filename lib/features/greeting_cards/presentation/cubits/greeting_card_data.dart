class GreetingCardData {
  final String subject, appeal, address;

  GreetingCardData({
    this.subject = 'С Новым 2024 годом!',
    this.appeal = '',
    this.address = '',
  });

  GreetingCardData copyWith({
    String? subject,
    String? appeal,
    String? address,
  }) =>
      GreetingCardData(
        subject: subject ?? this.subject,
        appeal: appeal ?? this.appeal,
        address: address ?? this.address,
      );
}
