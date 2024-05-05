part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial(
      {@Default(false) bool show,
      @Default(false) bool loading,
      String? error,
      UserModel? user}) = Initial;
}
