// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingsState data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingsState data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingsState data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsScreenStateLoading value) loading,
    required TResult Function(SettingsScreenStateShow value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenStateLoading value)? loading,
    TResult? Function(SettingsScreenStateShow value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenStateLoading value)? loading,
    TResult Function(SettingsScreenStateShow value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsScreenStateCopyWith<$Res> {
  factory $SettingsScreenStateCopyWith(
          SettingsScreenState value, $Res Function(SettingsScreenState) then) =
      _$SettingsScreenStateCopyWithImpl<$Res, SettingsScreenState>;
}

/// @nodoc
class _$SettingsScreenStateCopyWithImpl<$Res, $Val extends SettingsScreenState>
    implements $SettingsScreenStateCopyWith<$Res> {
  _$SettingsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsScreenStateLoadingCopyWith<$Res> {
  factory _$$SettingsScreenStateLoadingCopyWith(
          _$SettingsScreenStateLoading value,
          $Res Function(_$SettingsScreenStateLoading) then) =
      __$$SettingsScreenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsScreenStateLoadingCopyWithImpl<$Res>
    extends _$SettingsScreenStateCopyWithImpl<$Res,
        _$SettingsScreenStateLoading>
    implements _$$SettingsScreenStateLoadingCopyWith<$Res> {
  __$$SettingsScreenStateLoadingCopyWithImpl(
      _$SettingsScreenStateLoading _value,
      $Res Function(_$SettingsScreenStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsScreenStateLoading implements SettingsScreenStateLoading {
  const _$SettingsScreenStateLoading();

  @override
  String toString() {
    return 'SettingsScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsScreenStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingsState data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingsState data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingsState data)? loaded,
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
    required TResult Function(SettingsScreenStateLoading value) loading,
    required TResult Function(SettingsScreenStateShow value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenStateLoading value)? loading,
    TResult? Function(SettingsScreenStateShow value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenStateLoading value)? loading,
    TResult Function(SettingsScreenStateShow value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingsScreenStateLoading implements SettingsScreenState {
  const factory SettingsScreenStateLoading() = _$SettingsScreenStateLoading;
}

/// @nodoc
abstract class _$$SettingsScreenStateShowCopyWith<$Res> {
  factory _$$SettingsScreenStateShowCopyWith(_$SettingsScreenStateShow value,
          $Res Function(_$SettingsScreenStateShow) then) =
      __$$SettingsScreenStateShowCopyWithImpl<$Res>;
  @useResult
  $Res call({SettingsState data});

  $SettingsStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsScreenStateShowCopyWithImpl<$Res>
    extends _$SettingsScreenStateCopyWithImpl<$Res, _$SettingsScreenStateShow>
    implements _$$SettingsScreenStateShowCopyWith<$Res> {
  __$$SettingsScreenStateShowCopyWithImpl(_$SettingsScreenStateShow _value,
      $Res Function(_$SettingsScreenStateShow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsScreenStateShow(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsStateCopyWith<$Res> get data {
    return $SettingsStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SettingsScreenStateShow implements SettingsScreenStateShow {
  const _$SettingsScreenStateShow(this.data);

  @override
  final SettingsState data;

  @override
  String toString() {
    return 'SettingsScreenState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsScreenStateShow &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsScreenStateShowCopyWith<_$SettingsScreenStateShow> get copyWith =>
      __$$SettingsScreenStateShowCopyWithImpl<_$SettingsScreenStateShow>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingsState data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingsState data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingsState data)? loaded,
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
    required TResult Function(SettingsScreenStateLoading value) loading,
    required TResult Function(SettingsScreenStateShow value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenStateLoading value)? loading,
    TResult? Function(SettingsScreenStateShow value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenStateLoading value)? loading,
    TResult Function(SettingsScreenStateShow value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingsScreenStateShow implements SettingsScreenState {
  const factory SettingsScreenStateShow(final SettingsState data) =
      _$SettingsScreenStateShow;

  SettingsState get data;
  @JsonKey(ignore: true)
  _$$SettingsScreenStateShowCopyWith<_$SettingsScreenStateShow> get copyWith =>
      throw _privateConstructorUsedError;
}
