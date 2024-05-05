class RefreshException implements Exception {
  final String error;
  RefreshException(this.error);
}

class LoginException implements Exception {
  final String error;
  LoginException({this.error = 'Failed to log in'});
}

class LogoutException implements Exception {
  final String error;
  LogoutException({this.error = 'Failed to log out'});
}

class TodosException implements Exception {
  final String error;
  TodosException({this.error = 'Failed to load todos'});
}

class TodoAddException implements Exception {
  final String error;
  TodoAddException({this.error = 'Failed to add todo'});
}

class TodoEditException implements Exception {
  final String error;
  TodoEditException({this.error = 'Failed to edit todo'});
}
