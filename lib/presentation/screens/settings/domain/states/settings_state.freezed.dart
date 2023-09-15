// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  bool get isDarkTheme => throw _privateConstructorUsedError;
  bool get isSystemTheme => throw _privateConstructorUsedError;
  bool get isBillingNotification => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({bool isDarkTheme, bool isSystemTheme, bool isBillingNotification});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
    Object? isSystemTheme = null,
    Object? isBillingNotification = null,
  }) {
    return _then(_value.copyWith(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      isSystemTheme: null == isSystemTheme
          ? _value.isSystemTheme
          : isSystemTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      isBillingNotification: null == isBillingNotification
          ? _value.isBillingNotification
          : isBillingNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkTheme, bool isSystemTheme, bool isBillingNotification});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
    Object? isSystemTheme = null,
    Object? isBillingNotification = null,
  }) {
    return _then(_$_SettingsState(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      isSystemTheme: null == isSystemTheme
          ? _value.isSystemTheme
          : isSystemTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      isBillingNotification: null == isBillingNotification
          ? _value.isBillingNotification
          : isBillingNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {this.isDarkTheme = false,
      this.isSystemTheme = false,
      this.isBillingNotification = false});

  @override
  @JsonKey()
  final bool isDarkTheme;
  @override
  @JsonKey()
  final bool isSystemTheme;
  @override
  @JsonKey()
  final bool isBillingNotification;

  @override
  String toString() {
    return 'SettingsState(isDarkTheme: $isDarkTheme, isSystemTheme: $isSystemTheme, isBillingNotification: $isBillingNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme) &&
            (identical(other.isSystemTheme, isSystemTheme) ||
                other.isSystemTheme == isSystemTheme) &&
            (identical(other.isBillingNotification, isBillingNotification) ||
                other.isBillingNotification == isBillingNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isDarkTheme, isSystemTheme, isBillingNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {final bool isDarkTheme,
      final bool isSystemTheme,
      final bool isBillingNotification}) = _$_SettingsState;

  @override
  bool get isDarkTheme;
  @override
  bool get isSystemTheme;
  @override
  bool get isBillingNotification;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
