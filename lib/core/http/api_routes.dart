abstract class ApiRoutes {
  // Admin panel
  static const _version = 'api/mobile/v1';

  static const news = '$_version/news/';
  static const users = '$_version/portaluser/';
  static const likes = '$_version/likes/';
  static const likesstat = '$_version/likesstat/';
  static const greetingCardsTemplates = '$_version/postcardtemplates/';
  static const chatMessageVote = '$_version/mark_response/';
  static const systemSettings = '$_version/system_settings/';
  static const profile = '$_version/profile/';

  // Internal TL systems
  static const tasksSummary = 'api/TaskCount';
  static const tasksEas = 'api/Tasks';
  static const tasksEasComplete = 'api/EAS';

  static const tasksSbsWeekly = 'api/WeeklyRecords';
  static const tasksSbsWeeklyDelegate = 'api/WeeklyRecords/delegated';
  static const tasksSbsLate = 'api/LateRecords';

  static const tasksVacations = 'api/VacationRequests';
}
