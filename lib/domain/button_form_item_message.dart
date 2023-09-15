class ButtonFormItemMessage {
  final String id;
  final String title;
  final String type;
  final bool hidden;

  ButtonFormItemMessage(this.id, this.title, this.type, this.hidden);
}

const String buttonTypeExpand = 'expand';
const String buttonTypeSend = 'send';
const String buttonTypeCancel = 'cancel';
