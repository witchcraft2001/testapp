// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoriesScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(StoriesState data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(StoriesState data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(StoriesState data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesScreenStateLoading value) loading,
    required TResult Function(StoriesScreenStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesScreenStateLoading value)? loading,
    TResult? Function(StoriesScreenStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesScreenStateLoading value)? loading,
    TResult Function(StoriesScreenStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesScreenStateCopyWith<$Res> {
  factory $StoriesScreenStateCopyWith(
          StoriesScreenState value, $Res Function(StoriesScreenState) then) =
      _$StoriesScreenStateCopyWithImpl<$Res, StoriesScreenState>;
}

/// @nodoc
class _$StoriesScreenStateCopyWithImpl<$Res, $Val extends StoriesScreenState>
    implements $StoriesScreenStateCopyWith<$Res> {
  _$StoriesScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoriesScreenStateLoadingCopyWith<$Res> {
  factory _$$StoriesScreenStateLoadingCopyWith(
          _$StoriesScreenStateLoading value,
          $Res Function(_$StoriesScreenStateLoading) then) =
      __$$StoriesScreenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesScreenStateLoadingCopyWithImpl<$Res>
    extends _$StoriesScreenStateCopyWithImpl<$Res, _$StoriesScreenStateLoading>
    implements _$$StoriesScreenStateLoadingCopyWith<$Res> {
  __$$StoriesScreenStateLoadingCopyWithImpl(_$StoriesScreenStateLoading _value,
      $Res Function(_$StoriesScreenStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesScreenStateLoading implements StoriesScreenStateLoading {
  const _$StoriesScreenStateLoading();

  @override
  String toString() {
    return 'StoriesScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesScreenStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(StoriesState data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(StoriesState data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(StoriesState data)? loaded,
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
    required TResult Function(StoriesScreenStateLoading value) loading,
    required TResult Function(StoriesScreenStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesScreenStateLoading value)? loading,
    TResult? Function(StoriesScreenStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesScreenStateLoading value)? loading,
    TResult Function(StoriesScreenStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StoriesScreenStateLoading implements StoriesScreenState {
  const factory StoriesScreenStateLoading() = _$StoriesScreenStateLoading;
}

/// @nodoc
abstract class _$$StoriesScreenStateLoadedCopyWith<$Res> {
  factory _$$StoriesScreenStateLoadedCopyWith(_$StoriesScreenStateLoaded value,
          $Res Function(_$StoriesScreenStateLoaded) then) =
      __$$StoriesScreenStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({StoriesState data});

  $StoriesStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$StoriesScreenStateLoadedCopyWithImpl<$Res>
    extends _$StoriesScreenStateCopyWithImpl<$Res, _$StoriesScreenStateLoaded>
    implements _$$StoriesScreenStateLoadedCopyWith<$Res> {
  __$$StoriesScreenStateLoadedCopyWithImpl(_$StoriesScreenStateLoaded _value,
      $Res Function(_$StoriesScreenStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StoriesScreenStateLoaded(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoriesState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StoriesStateCopyWith<$Res> get data {
    return $StoriesStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$StoriesScreenStateLoaded implements StoriesScreenStateLoaded {
  const _$StoriesScreenStateLoaded(this.data);

  @override
  final StoriesState data;

  @override
  String toString() {
    return 'StoriesScreenState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesScreenStateLoaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesScreenStateLoadedCopyWith<_$StoriesScreenStateLoaded>
      get copyWith =>
          __$$StoriesScreenStateLoadedCopyWithImpl<_$StoriesScreenStateLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(StoriesState data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(StoriesState data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(StoriesState data)? loaded,
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
    required TResult Function(StoriesScreenStateLoading value) loading,
    required TResult Function(StoriesScreenStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesScreenStateLoading value)? loading,
    TResult? Function(StoriesScreenStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesScreenStateLoading value)? loading,
    TResult Function(StoriesScreenStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StoriesScreenStateLoaded implements StoriesScreenState {
  const factory StoriesScreenStateLoaded(final StoriesState data) =
      _$StoriesScreenStateLoaded;

  StoriesState get data;
  @JsonKey(ignore: true)
  _$$StoriesScreenStateLoadedCopyWith<_$StoriesScreenStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}
