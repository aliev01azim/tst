// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoDTO _$TodoDTOFromJson(Map<String, dynamic> json) {
  return _TodoDTO.fromJson(json);
}

/// @nodoc
mixin _$TodoDTO {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDTOCopyWith<TodoDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDTOCopyWith<$Res> {
  factory $TodoDTOCopyWith(TodoDTO value, $Res Function(TodoDTO) then) =
      _$TodoDTOCopyWithImpl<$Res, TodoDTO>;
  @useResult
  $Res call({int id, int userId, String title, bool completed});
}

/// @nodoc
class _$TodoDTOCopyWithImpl<$Res, $Val extends TodoDTO>
    implements $TodoDTOCopyWith<$Res> {
  _$TodoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoDTOImplCopyWith<$Res> implements $TodoDTOCopyWith<$Res> {
  factory _$$TodoDTOImplCopyWith(
          _$TodoDTOImpl value, $Res Function(_$TodoDTOImpl) then) =
      __$$TodoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String title, bool completed});
}

/// @nodoc
class __$$TodoDTOImplCopyWithImpl<$Res>
    extends _$TodoDTOCopyWithImpl<$Res, _$TodoDTOImpl>
    implements _$$TodoDTOImplCopyWith<$Res> {
  __$$TodoDTOImplCopyWithImpl(
      _$TodoDTOImpl _value, $Res Function(_$TodoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_$TodoDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoDTOImpl extends _TodoDTO {
  _$TodoDTOImpl(
      {required this.id,
      required this.userId,
      required this.title,
      required this.completed})
      : super._();

  factory _$TodoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoDTOImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TodoDTO(id: $id, userId: $userId, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDTOImplCopyWith<_$TodoDTOImpl> get copyWith =>
      __$$TodoDTOImplCopyWithImpl<_$TodoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoDTOImplToJson(
      this,
    );
  }
}

abstract class _TodoDTO extends TodoDTO {
  factory _TodoDTO(
      {required final int id,
      required final int userId,
      required final String title,
      required final bool completed}) = _$TodoDTOImpl;
  _TodoDTO._() : super._();

  factory _TodoDTO.fromJson(Map<String, dynamic> json) = _$TodoDTOImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get title;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$TodoDTOImplCopyWith<_$TodoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
