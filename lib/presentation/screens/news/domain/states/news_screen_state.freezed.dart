// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsState data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsState data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsState data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsScreenStateLoading value) loading,
    required TResult Function(NewsScreenStateLoaded value) loaded,
    required TResult Function(NewsScreenStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsScreenStateLoading value)? loading,
    TResult? Function(NewsScreenStateLoaded value)? loaded,
    TResult? Function(NewsScreenStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsScreenStateLoading value)? loading,
    TResult Function(NewsScreenStateLoaded value)? loaded,
    TResult Function(NewsScreenStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsScreenStateCopyWith<$Res> {
  factory $NewsScreenStateCopyWith(
          NewsScreenState value, $Res Function(NewsScreenState) then) =
      _$NewsScreenStateCopyWithImpl<$Res, NewsScreenState>;
}

/// @nodoc
class _$NewsScreenStateCopyWithImpl<$Res, $Val extends NewsScreenState>
    implements $NewsScreenStateCopyWith<$Res> {
  _$NewsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewsScreenStateLoadingCopyWith<$Res> {
  factory _$$NewsScreenStateLoadingCopyWith(_$NewsScreenStateLoading value,
          $Res Function(_$NewsScreenStateLoading) then) =
      __$$NewsScreenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsScreenStateLoadingCopyWithImpl<$Res>
    extends _$NewsScreenStateCopyWithImpl<$Res, _$NewsScreenStateLoading>
    implements _$$NewsScreenStateLoadingCopyWith<$Res> {
  __$$NewsScreenStateLoadingCopyWithImpl(_$NewsScreenStateLoading _value,
      $Res Function(_$NewsScreenStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsScreenStateLoading implements NewsScreenStateLoading {
  const _$NewsScreenStateLoading();

  @override
  String toString() {
    return 'NewsScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsScreenStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsState data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsState data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsState data)? loaded,
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
    required TResult Function(NewsScreenStateLoading value) loading,
    required TResult Function(NewsScreenStateLoaded value) loaded,
    required TResult Function(NewsScreenStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsScreenStateLoading value)? loading,
    TResult? Function(NewsScreenStateLoaded value)? loaded,
    TResult? Function(NewsScreenStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsScreenStateLoading value)? loading,
    TResult Function(NewsScreenStateLoaded value)? loaded,
    TResult Function(NewsScreenStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewsScreenStateLoading implements NewsScreenState {
  const factory NewsScreenStateLoading() = _$NewsScreenStateLoading;
}

/// @nodoc
abstract class _$$NewsScreenStateLoadedCopyWith<$Res> {
  factory _$$NewsScreenStateLoadedCopyWith(_$NewsScreenStateLoaded value,
          $Res Function(_$NewsScreenStateLoaded) then) =
      __$$NewsScreenStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsState data});

  $NewsStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$NewsScreenStateLoadedCopyWithImpl<$Res>
    extends _$NewsScreenStateCopyWithImpl<$Res, _$NewsScreenStateLoaded>
    implements _$$NewsScreenStateLoadedCopyWith<$Res> {
  __$$NewsScreenStateLoadedCopyWithImpl(_$NewsScreenStateLoaded _value,
      $Res Function(_$NewsScreenStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NewsScreenStateLoaded(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsStateCopyWith<$Res> get data {
    return $NewsStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$NewsScreenStateLoaded implements NewsScreenStateLoaded {
  const _$NewsScreenStateLoaded(this.data);

  @override
  final NewsState data;

  @override
  String toString() {
    return 'NewsScreenState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsScreenStateLoaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsScreenStateLoadedCopyWith<_$NewsScreenStateLoaded> get copyWith =>
      __$$NewsScreenStateLoadedCopyWithImpl<_$NewsScreenStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsState data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsState data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsState data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsScreenStateLoading value) loading,
    required TResult Function(NewsScreenStateLoaded value) loaded,
    required TResult Function(NewsScreenStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsScreenStateLoading value)? loading,
    TResult? Function(NewsScreenStateLoaded value)? loaded,
    TResult? Function(NewsScreenStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsScreenStateLoading value)? loading,
    TResult Function(NewsScreenStateLoaded value)? loaded,
    TResult Function(NewsScreenStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsScreenStateLoaded implements NewsScreenState {
  const factory NewsScreenStateLoaded(final NewsState data) =
      _$NewsScreenStateLoaded;

  NewsState get data;
  @JsonKey(ignore: true)
  _$$NewsScreenStateLoadedCopyWith<_$NewsScreenStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsScreenStateErrorCopyWith<$Res> {
  factory _$$NewsScreenStateErrorCopyWith(_$NewsScreenStateError value,
          $Res Function(_$NewsScreenStateError) then) =
      __$$NewsScreenStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NewsScreenStateErrorCopyWithImpl<$Res>
    extends _$NewsScreenStateCopyWithImpl<$Res, _$NewsScreenStateError>
    implements _$$NewsScreenStateErrorCopyWith<$Res> {
  __$$NewsScreenStateErrorCopyWithImpl(_$NewsScreenStateError _value,
      $Res Function(_$NewsScreenStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NewsScreenStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsScreenStateError implements NewsScreenStateError {
  const _$NewsScreenStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NewsScreenState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsScreenStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsScreenStateErrorCopyWith<_$NewsScreenStateError> get copyWith =>
      __$$NewsScreenStateErrorCopyWithImpl<_$NewsScreenStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NewsState data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(NewsState data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NewsState data)? loaded,
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
    required TResult Function(NewsScreenStateLoading value) loading,
    required TResult Function(NewsScreenStateLoaded value) loaded,
    required TResult Function(NewsScreenStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsScreenStateLoading value)? loading,
    TResult? Function(NewsScreenStateLoaded value)? loaded,
    TResult? Function(NewsScreenStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsScreenStateLoading value)? loading,
    TResult Function(NewsScreenStateLoaded value)? loaded,
    TResult Function(NewsScreenStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewsScreenStateError implements NewsScreenState {
  const factory NewsScreenStateError(final String message) =
      _$NewsScreenStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$NewsScreenStateErrorCopyWith<_$NewsScreenStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
