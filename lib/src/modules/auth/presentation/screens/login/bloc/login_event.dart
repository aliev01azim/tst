part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.logging(
      {required String email, required String password}) = Logging;
  const factory LoginEvent.hidePassword() = HidePassword;
  const factory LoginEvent.clear() = Clear;
  const factory LoginEvent.logOut() = LogOut;
}
