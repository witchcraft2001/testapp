part of 'tasks_eas_screen.dart';

class _TaskData {
  _TaskData._();

  static const idBudget = 'budgetleftafterrequestcostcentercurrency';
  static const idTotalNative = 'totalnative';

  static const idsToFormatting = [idBudget, idTotalNative];

  static const actionApprove = 'approve';
  static const actionReject = 'reject';

  static const personPayer = 'payer';
  static const personInitiator = 'initiator';
}

final _translations = {
  _TaskData.actionApprove: S.current.btnApprove,
  _TaskData.actionReject: S.current.btnReject,
};
