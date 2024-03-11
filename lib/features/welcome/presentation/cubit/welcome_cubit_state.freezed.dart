// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WelcomeCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WelcomeCubitStateReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WelcomeCubitStateReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WelcomeCubitStateReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeCubitStateCopyWith<$Res> {
  factory $WelcomeCubitStateCopyWith(
          WelcomeCubitState value, $Res Function(WelcomeCubitState) then) =
      _$WelcomeCubitStateCopyWithImpl<$Res, WelcomeCubitState>;
}

/// @nodoc
class _$WelcomeCubitStateCopyWithImpl<$Res, $Val extends WelcomeCubitState>
    implements $WelcomeCubitStateCopyWith<$Res> {
  _$WelcomeCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WelcomeCubitStateReadyImplCopyWith<$Res> {
  factory _$$WelcomeCubitStateReadyImplCopyWith(
          _$WelcomeCubitStateReadyImpl value,
          $Res Function(_$WelcomeCubitStateReadyImpl) then) =
      __$$WelcomeCubitStateReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WelcomeCubitStateReadyImplCopyWithImpl<$Res>
    extends _$WelcomeCubitStateCopyWithImpl<$Res, _$WelcomeCubitStateReadyImpl>
    implements _$$WelcomeCubitStateReadyImplCopyWith<$Res> {
  __$$WelcomeCubitStateReadyImplCopyWithImpl(
      _$WelcomeCubitStateReadyImpl _value,
      $Res Function(_$WelcomeCubitStateReadyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WelcomeCubitStateReadyImpl implements _WelcomeCubitStateReady {
  const _$WelcomeCubitStateReadyImpl();

  @override
  String toString() {
    return 'WelcomeCubitState.ready()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeCubitStateReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WelcomeCubitStateReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WelcomeCubitStateReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WelcomeCubitStateReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _WelcomeCubitStateReady implements WelcomeCubitState {
  const factory _WelcomeCubitStateReady() = _$WelcomeCubitStateReadyImpl;
}
