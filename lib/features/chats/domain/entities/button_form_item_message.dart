class ButtonFormItemMessage {
  final String id;
  final String title;
  final String type;
  final bool hidden;
  final int sortId;

  ButtonFormItemMessage(
    this.id,
    this.title,
    this.type,
    this.hidden,
    this.sortId,
  );
}

const String buttonTypeExpand = 'expand';
const String buttonTypeSend = 'send';
const String buttonTypeCancel = 'cancel';
