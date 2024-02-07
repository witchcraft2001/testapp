class ApiRoutes {
  const ApiRoutes._();

  // Admin panel
  static const news = 'api/news';
  static const users = 'api/portaluser/';
  static const likes = 'api/likes/';
  static const likesstat = 'api/likesstat/';

  // Interal TL systems
  static const tasksSummary = 'api/TaskCount';
  static const tasksEas = 'api/Tasks';
  static const tasksEasComplete = 'api/EAS';

  static const tasksSbsWeekly = 'api/WeeklyRecords';
  static const tasksSbsWeeklyDelegate = 'api/WeeklyRecords/delegated';
  static const tasksSbsLate = 'api/LateRecords';

  static const tasksVacations = 'api/VacationRequests';
}
