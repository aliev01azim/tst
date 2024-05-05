// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logging,
    required TResult Function() hidePassword,
    required TResult Function() clear,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logging,
    TResult? Function()? hidePassword,
    TResult? Function()? clear,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logging,
    TResult Function()? hidePassword,
    TResult Function()? clear,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logging value) logging,
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(Clear value) clear,
    required TResult Function(LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logging value)? logging,
    TResult? Function(HidePassword value)? hidePassword,
    TResult? Function(Clear value)? clear,
    TResult? Function(LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logging value)? logging,
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(Clear value)? clear,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggingImplCopyWith<$Res> {
  factory _$$LoggingImplCopyWith(
          _$LoggingImpl value, $Res Function(_$LoggingImpl) then) =
      __$$LoggingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoggingImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoggingImpl>
    implements _$$LoggingImplCopyWith<$Res> {
  __$$LoggingImplCopyWithImpl(
      _$LoggingImpl _value, $Res Function(_$LoggingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoggingImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoggingImpl implements Logging {
  const _$LoggingImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.logging(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggingImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggingImplCopyWith<_$LoggingImpl> get copyWith =>
      __$$LoggingImplCopyWithImpl<_$LoggingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logging,
    required TResult Function() hidePassword,
    required TResult Function() clear,
    required TResult Function() logOut,
  }) {
    return logging(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logging,
    TResult? Function()? hidePassword,
    TResult? Function()? clear,
    TResult? Function()? logOut,
  }) {
    return logging?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logging,
    TResult Function()? hidePassword,
    TResult Function()? clear,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logging value) logging,
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(Clear value) clear,
    required TResult Function(LogOut value) logOut,
  }) {
    return logging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logging value)? logging,
    TResult? Function(HidePassword value)? hidePassword,
    TResult? Function(Clear value)? clear,
    TResult? Function(LogOut value)? logOut,
  }) {
    return logging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logging value)? logging,
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(Clear value)? clear,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging(this);
    }
    return orElse();
  }
}

abstract class Logging implements LoginEvent {
  const factory Logging(
      {required final String email,
      required final String password}) = _$LoggingImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoggingImplCopyWith<_$LoggingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HidePasswordImplCopyWith<$Res> {
  factory _$$HidePasswordImplCopyWith(
          _$HidePasswordImpl value, $Res Function(_$HidePasswordImpl) then) =
      __$$HidePasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HidePasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$HidePasswordImpl>
    implements _$$HidePasswordImplCopyWith<$Res> {
  __$$HidePasswordImplCopyWithImpl(
      _$HidePasswordImpl _value, $Res Function(_$HidePasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HidePasswordImpl implements HidePassword {
  const _$HidePasswordImpl();

  @override
  String toString() {
    return 'LoginEvent.hidePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HidePasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logging,
    required TResult Function() hidePassword,
    required TResult Function() clear,
    required TResult Function() logOut,
  }) {
    return hidePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logging,
    TResult? Function()? hidePassword,
    TResult? Function()? clear,
    TResult? Function()? logOut,
  }) {
    return hidePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logging,
    TResult Function()? hidePassword,
    TResult Function()? clear,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logging value) logging,
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(Clear value) clear,
    required TResult Function(LogOut value) logOut,
  }) {
    return hidePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logging value)? logging,
    TResult? Function(HidePassword value)? hidePassword,
    TResult? Function(Clear value)? clear,
    TResult? Function(LogOut value)? logOut,
  }) {
    return hidePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logging value)? logging,
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(Clear value)? clear,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword(this);
    }
    return orElse();
  }
}

abstract class HidePassword implements LoginEvent {
  const factory HidePassword() = _$HidePasswordImpl;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'LoginEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logging,
    required TResult Function() hidePassword,
    required TResult Function() clear,
    required TResult Function() logOut,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logging,
    TResult? Function()? hidePassword,
    TResult? Function()? clear,
    TResult? Function()? logOut,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logging,
    TResult Function()? hidePassword,
    TResult Function()? clear,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logging value) logging,
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(Clear value) clear,
    required TResult Function(LogOut value) logOut,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logging value)? logging,
    TResult? Function(HidePassword value)? hidePassword,
    TResult? Function(Clear value)? clear,
    TResult? Function(LogOut value)? logOut,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logging value)? logging,
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(Clear value)? clear,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements LoginEvent {
  const factory Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'LoginEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logging,
    required TResult Function() hidePassword,
    required TResult Function() clear,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logging,
    TResult? Function()? hidePassword,
    TResult? Function()? clear,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logging,
    TResult Function()? hidePassword,
    TResult Function()? clear,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Logging value) logging,
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(Clear value) clear,
    required TResult Function(LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Logging value)? logging,
    TResult? Function(HidePassword value)? hidePassword,
    TResult? Function(Clear value)? clear,
    TResult? Function(LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Logging value)? logging,
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(Clear value)? clear,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements LoginEvent {
  const factory LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$LoginState {
  bool get show => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool show, bool loading, String? error, UserModel? user)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({bool show, bool loading, String? error, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
    Object? loading = null,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool show, bool loading, String? error, UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
    Object? loading = null,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_$InitialImpl(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(
      {this.show = false, this.loading = false, this.error, this.user});

  @override
  @JsonKey()
  final bool show;
  @override
  @JsonKey()
  final bool loading;
  @override
  final String? error;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'LoginState.initial(show: $show, loading: $loading, error: $error, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.show, show) || other.show == show) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, show, loading, error, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool show, bool loading, String? error, UserModel? user)
        initial,
  }) {
    return initial(show, loading, error, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
  }) {
    return initial?.call(show, loading, error, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(show, loading, error, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial(
      {final bool show,
      final bool loading,
      final String? error,
      final UserModel? user}) = _$InitialImpl;

  @override
  bool get show;
  @override
  bool get loading;
  @override
  String? get error;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
