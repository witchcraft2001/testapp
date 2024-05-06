class FormFieldRequest {
  final String id;
  final String value;

  FormFieldRequest(this.id, this.value);

  Map<String, dynamic> toJson() => {
    'id': id,
    'value': value,
  };
}
