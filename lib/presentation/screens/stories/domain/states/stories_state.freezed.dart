// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoriesState {
  List<ApiStory> get stories => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoriesStateCopyWith<StoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res, StoriesState>;
  @useResult
  $Res call({List<ApiStory> stories, int index, Color? color});
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res, $Val extends StoriesState>
    implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
    Object? index = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<ApiStory>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoriesStateCopyWith<$Res>
    implements $StoriesStateCopyWith<$Res> {
  factory _$$_StoriesStateCopyWith(
          _$_StoriesState value, $Res Function(_$_StoriesState) then) =
      __$$_StoriesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ApiStory> stories, int index, Color? color});
}

/// @nodoc
class __$$_StoriesStateCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$_StoriesState>
    implements _$$_StoriesStateCopyWith<$Res> {
  __$$_StoriesStateCopyWithImpl(
      _$_StoriesState _value, $Res Function(_$_StoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
    Object? index = null,
    Object? color = freezed,
  }) {
    return _then(_$_StoriesState(
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<ApiStory>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_StoriesState implements _StoriesState {
  const _$_StoriesState(
      {final List<ApiStory> stories = const <ApiStory>[],
      this.index = 0,
      this.color})
      : _stories = stories;

  final List<ApiStory> _stories;
  @override
  @JsonKey()
  List<ApiStory> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  @JsonKey()
  final int index;
  @override
  final Color? color;

  @override
  String toString() {
    return 'StoriesState(stories: $stories, index: $index, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesState &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stories), index, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesStateCopyWith<_$_StoriesState> get copyWith =>
      __$$_StoriesStateCopyWithImpl<_$_StoriesState>(this, _$identity);
}

abstract class _StoriesState implements StoriesState {
  const factory _StoriesState(
      {final List<ApiStory> stories,
      final int index,
      final Color? color}) = _$_StoriesState;

  @override
  List<ApiStory> get stories;
  @override
  int get index;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesStateCopyWith<_$_StoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
