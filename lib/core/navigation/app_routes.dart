enum AppRoutes {
  // Auth
  auth('auth', '/auth'),
  // API Settings
  apiSettings('api_settings', '/api_settings'),

  // Started
  region('regions', '/regions'),

  // Home
  news('news', '/news'),
  chats('chats', '/chats'),
  tasks('tasks', '/tasks'),
  profile('profile', '/profile'),

  // News
  stories('stories', ':id'),

  // Chats
  chat('chat', ':id'),

  // Tasks
  sbsWeekly('sbsWeekly', 'sbsWeekly'),
  sbsLate('sbsLate', 'sbsLate'),
  eas('eas', 'eas'),
  vacations('vacations', 'vacations'),
  sickLeaves('sickLeaves', 'sickLeaves'),

  // Profile
  profileDocuments('documents', 'documents'),
  profileBusinessCards('business_cards', 'business_cards'),
  profileBusinessCardsEdit('edit', 'edit/:id'),
  profileBusinessCardsShow('show', 'show/:id'),
  profileHolidays('holidays', 'holidays'),
  profileSettings('settings', 'settings'),
  profileFeedback('feedback', 'feedback'),
  profileAbout('about', 'about');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
}
