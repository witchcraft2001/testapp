// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksCubitState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TasksStateReadyData<T> data) ready,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TasksStateReadyData<T> data)? ready,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TasksStateReadyData<T> data)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Ready<T> value) ready,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Ready<T> value)? ready,
    TResult? Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Ready<T> value)? ready,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksCubitStateCopyWith<T, $Res> {
  factory $TasksCubitStateCopyWith(
          TasksCubitState<T> value, $Res Function(TasksCubitState<T>) then) =
      _$TasksCubitStateCopyWithImpl<T, $Res, TasksCubitState<T>>;
}

/// @nodoc
class _$TasksCubitStateCopyWithImpl<T, $Res, $Val extends TasksCubitState<T>>
    implements $TasksCubitStateCopyWith<T, $Res> {
  _$TasksCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T> value, $Res Function(_$_Loading<T>) then) =
      __$$_LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, $Res>
    extends _$TasksCubitStateCopyWithImpl<T, $Res, _$_Loading<T>>
    implements _$$_LoadingCopyWith<T, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T> _value, $Res Function(_$_Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'TasksCubitState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TasksStateReadyData<T> data) ready,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TasksStateReadyData<T> data)? ready,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TasksStateReadyData<T> data)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Ready<T> value) ready,
    required TResult Function(_Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Ready<T> value)? ready,
    TResult? Function(_Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Ready<T> value)? ready,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements TasksCubitState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<T, $Res> {
  factory _$$_ReadyCopyWith(
          _$_Ready<T> value, $Res Function(_$_Ready<T>) then) =
      __$$_ReadyCopyWithImpl<T, $Res>;
  @useResult
  $Res call({TasksStateReadyData<T> data});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<T, $Res>
    extends _$TasksCubitStateCopyWithImpl<T, $Res, _$_Ready<T>>
    implements _$$_ReadyCopyWith<T, $Res> {
  __$$_ReadyCopyWithImpl(_$_Ready<T> _value, $Res Function(_$_Ready<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Ready<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TasksStateReadyData<T>,
    ));
  }
}

/// @nodoc

class _$_Ready<T> implements _Ready<T> {
  const _$_Ready(this.data);

  @override
  final TasksStateReadyData<T> data;

  @override
  String toString() {
    return 'TasksCubitState<$T>.ready(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadyCopyWith<T, _$_Ready<T>> get copyWith =>
      __$$_ReadyCopyWithImpl<T, _$_Ready<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TasksStateReadyData<T> data) ready,
    required TResult Function(String message) error,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TasksStateReadyData<T> data)? ready,
    TResult? Function(String message)? error,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TasksStateReadyData<T> data)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Ready<T> value) ready,
    required TResult Function(_Error<T> value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Ready<T> value)? ready,
    TResult? Function(_Error<T> value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Ready<T> value)? ready,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready<T> implements TasksCubitState<T> {
  const factory _Ready(final TasksStateReadyData<T> data) = _$_Ready<T>;

  TasksStateReadyData<T> get data;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<T, _$_Ready<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<T, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<T> value, $Res Function(_$_Error<T>) then) =
      __$$_ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<T, $Res>
    extends _$TasksCubitStateCopyWithImpl<T, $Res, _$_Error<T>>
    implements _$$_ErrorCopyWith<T, $Res> {
  __$$_ErrorCopyWithImpl(_$_Error<T> _value, $Res Function(_$_Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TasksCubitState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      __$$_ErrorCopyWithImpl<T, _$_Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TasksStateReadyData<T> data) ready,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TasksStateReadyData<T> data)? ready,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TasksStateReadyData<T> data)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Ready<T> value) ready,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Ready<T> value)? ready,
    TResult? Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Ready<T> value)? ready,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements TasksCubitState<T> {
  const factory _Error(final String message) = _$_Error<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
