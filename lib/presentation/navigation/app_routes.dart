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

  // Profile
  profileDocuments('documents', 'documents'),
  profileBusinessCards('business_cards', 'business_cards'),
  profileBusinessCardsEdit('edit', 'edit/:id'),
  profileBusinessCardsShow('show', 'show/:id'),
  profileSettings('settings', 'settings'),
  profileFeedback('feedback', 'feedback');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
}
