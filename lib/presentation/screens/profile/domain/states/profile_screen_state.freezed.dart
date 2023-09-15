// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileState data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileState data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileState data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileScreenStateLoading value) loading,
    required TResult Function(ProfileScreenStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileScreenStateLoading value)? loading,
    TResult? Function(ProfileScreenStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileScreenStateLoading value)? loading,
    TResult Function(ProfileScreenStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileScreenStateCopyWith<$Res> {
  factory $ProfileScreenStateCopyWith(
          ProfileScreenState value, $Res Function(ProfileScreenState) then) =
      _$ProfileScreenStateCopyWithImpl<$Res, ProfileScreenState>;
}

/// @nodoc
class _$ProfileScreenStateCopyWithImpl<$Res, $Val extends ProfileScreenState>
    implements $ProfileScreenStateCopyWith<$Res> {
  _$ProfileScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileScreenStateLoadingCopyWith<$Res> {
  factory _$$ProfileScreenStateLoadingCopyWith(
          _$ProfileScreenStateLoading value,
          $Res Function(_$ProfileScreenStateLoading) then) =
      __$$ProfileScreenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileScreenStateLoadingCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res, _$ProfileScreenStateLoading>
    implements _$$ProfileScreenStateLoadingCopyWith<$Res> {
  __$$ProfileScreenStateLoadingCopyWithImpl(_$ProfileScreenStateLoading _value,
      $Res Function(_$ProfileScreenStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileScreenStateLoading implements ProfileScreenStateLoading {
  const _$ProfileScreenStateLoading();

  @override
  String toString() {
    return 'ProfileScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileScreenStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileState data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileState data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileState data)? loaded,
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
    required TResult Function(ProfileScreenStateLoading value) loading,
    required TResult Function(ProfileScreenStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileScreenStateLoading value)? loading,
    TResult? Function(ProfileScreenStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileScreenStateLoading value)? loading,
    TResult Function(ProfileScreenStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileScreenStateLoading implements ProfileScreenState {
  const factory ProfileScreenStateLoading() = _$ProfileScreenStateLoading;
}

/// @nodoc
abstract class _$$ProfileScreenStateLoadedCopyWith<$Res> {
  factory _$$ProfileScreenStateLoadedCopyWith(_$ProfileScreenStateLoaded value,
          $Res Function(_$ProfileScreenStateLoaded) then) =
      __$$ProfileScreenStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileState data});

  $ProfileStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProfileScreenStateLoadedCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res, _$ProfileScreenStateLoaded>
    implements _$$ProfileScreenStateLoadedCopyWith<$Res> {
  __$$ProfileScreenStateLoadedCopyWithImpl(_$ProfileScreenStateLoaded _value,
      $Res Function(_$ProfileScreenStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ProfileScreenStateLoaded(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<$Res> get data {
    return $ProfileStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ProfileScreenStateLoaded implements ProfileScreenStateLoaded {
  const _$ProfileScreenStateLoaded(this.data);

  @override
  final ProfileState data;

  @override
  String toString() {
    return 'ProfileScreenState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileScreenStateLoaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileScreenStateLoadedCopyWith<_$ProfileScreenStateLoaded>
      get copyWith =>
          __$$ProfileScreenStateLoadedCopyWithImpl<_$ProfileScreenStateLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileState data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileState data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileState data)? loaded,
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
    required TResult Function(ProfileScreenStateLoading value) loading,
    required TResult Function(ProfileScreenStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileScreenStateLoading value)? loading,
    TResult? Function(ProfileScreenStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileScreenStateLoading value)? loading,
    TResult Function(ProfileScreenStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileScreenStateLoaded implements ProfileScreenState {
  const factory ProfileScreenStateLoaded(final ProfileState data) =
      _$ProfileScreenStateLoaded;

  ProfileState get data;
  @JsonKey(ignore: true)
  _$$ProfileScreenStateLoadedCopyWith<_$ProfileScreenStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}
