class ApiEndpoints {
  static const String login = '/login';
  static const String logout = '/logout';
  static const String getUserInfo = '/me';

  //new apis here
  static const String organisations = '/admin/organisations';
  static const String branches = '/my/branches';
  static const String cameras = '/admin/cameras';
  static const String liveCameras = '/orgcameras/live-bundle';
  static const String zones = '/admin/zones';
  static const String heatmaps = '/branches/heatmaps/latest';
  static const String dwellDashboard = '/dwell/dashboard';
  static const String currentVisitors = '/admin/analytics/current-visitors';
  static const String visitorsReport = '/dashboard/visitors-report';
  static const String dashboard = '/admin/dashboard';
}
