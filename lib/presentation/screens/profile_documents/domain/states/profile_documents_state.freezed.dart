// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_documents_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileDocumentsState {
  List<AppDocument> get documents => throw _privateConstructorUsedError;
  List<AppDocument> get selects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileDocumentsStateCopyWith<ProfileDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDocumentsStateCopyWith<$Res> {
  factory $ProfileDocumentsStateCopyWith(ProfileDocumentsState value,
          $Res Function(ProfileDocumentsState) then) =
      _$ProfileDocumentsStateCopyWithImpl<$Res, ProfileDocumentsState>;
  @useResult
  $Res call({List<AppDocument> documents, List<AppDocument> selects});
}

/// @nodoc
class _$ProfileDocumentsStateCopyWithImpl<$Res,
        $Val extends ProfileDocumentsState>
    implements $ProfileDocumentsStateCopyWith<$Res> {
  _$ProfileDocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? selects = null,
  }) {
    return _then(_value.copyWith(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<AppDocument>,
      selects: null == selects
          ? _value.selects
          : selects // ignore: cast_nullable_to_non_nullable
              as List<AppDocument>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileDocumentsStateCopyWith<$Res>
    implements $ProfileDocumentsStateCopyWith<$Res> {
  factory _$$_ProfileDocumentsStateCopyWith(_$_ProfileDocumentsState value,
          $Res Function(_$_ProfileDocumentsState) then) =
      __$$_ProfileDocumentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppDocument> documents, List<AppDocument> selects});
}

/// @nodoc
class __$$_ProfileDocumentsStateCopyWithImpl<$Res>
    extends _$ProfileDocumentsStateCopyWithImpl<$Res, _$_ProfileDocumentsState>
    implements _$$_ProfileDocumentsStateCopyWith<$Res> {
  __$$_ProfileDocumentsStateCopyWithImpl(_$_ProfileDocumentsState _value,
      $Res Function(_$_ProfileDocumentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? selects = null,
  }) {
    return _then(_$_ProfileDocumentsState(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<AppDocument>,
      selects: null == selects
          ? _value._selects
          : selects // ignore: cast_nullable_to_non_nullable
              as List<AppDocument>,
    ));
  }
}

/// @nodoc

class _$_ProfileDocumentsState implements _ProfileDocumentsState {
  const _$_ProfileDocumentsState(
      {final List<AppDocument> documents = const <AppDocument>[],
      final List<AppDocument> selects = const <AppDocument>[]})
      : _documents = documents,
        _selects = selects;

  final List<AppDocument> _documents;
  @override
  @JsonKey()
  List<AppDocument> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  final List<AppDocument> _selects;
  @override
  @JsonKey()
  List<AppDocument> get selects {
    if (_selects is EqualUnmodifiableListView) return _selects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selects);
  }

  @override
  String toString() {
    return 'ProfileDocumentsState(documents: $documents, selects: $selects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDocumentsState &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality().equals(other._selects, _selects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(_selects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileDocumentsStateCopyWith<_$_ProfileDocumentsState> get copyWith =>
      __$$_ProfileDocumentsStateCopyWithImpl<_$_ProfileDocumentsState>(
          this, _$identity);
}

abstract class _ProfileDocumentsState implements ProfileDocumentsState {
  const factory _ProfileDocumentsState(
      {final List<AppDocument> documents,
      final List<AppDocument> selects}) = _$_ProfileDocumentsState;

  @override
  List<AppDocument> get documents;
  @override
  List<AppDocument> get selects;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDocumentsStateCopyWith<_$_ProfileDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
