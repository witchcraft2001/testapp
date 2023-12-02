part of 'tasks_vacation_screen.dart';

class _TaskData {
  _TaskData._();

  static const actionApprove = 'approve';
  static const actionReject = 'reject';
}

final _translations = {
  _TaskData.actionApprove: S.current.btnApprove,
  _TaskData.actionReject: S.current.btnReject,
};
