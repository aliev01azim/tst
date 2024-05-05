extension EmailValidation on String {
  bool isValidEmail() {
    final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
        caseSensitive: false, multiLine: false);
    return regex.hasMatch(this);
  }
}
