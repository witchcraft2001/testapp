// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_task_sbs_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiTaskSBSDao _$ApiTaskSBSDaoFromJson(Map<String, dynamic> json) {
  return _ApiTaskSBSDao.fromJson(json);
}

/// @nodoc
mixin _$ApiTaskSBSDao {
  int get projectSbsId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get pmName => throw _privateConstructorUsedError;
  String get amName => throw _privateConstructorUsedError;
  List<ApiTaskSBSConsultantRecordDao> get consultantsWithRecords =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTaskSBSDaoCopyWith<ApiTaskSBSDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTaskSBSDaoCopyWith<$Res> {
  factory $ApiTaskSBSDaoCopyWith(
          ApiTaskSBSDao value, $Res Function(ApiTaskSBSDao) then) =
      _$ApiTaskSBSDaoCopyWithImpl<$Res, ApiTaskSBSDao>;
  @useResult
  $Res call(
      {int projectSbsId,
      String projectName,
      String company,
      String pmName,
      String amName,
      List<ApiTaskSBSConsultantRecordDao> consultantsWithRecords});
}

/// @nodoc
class _$ApiTaskSBSDaoCopyWithImpl<$Res, $Val extends ApiTaskSBSDao>
    implements $ApiTaskSBSDaoCopyWith<$Res> {
  _$ApiTaskSBSDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectSbsId = null,
    Object? projectName = null,
    Object? company = null,
    Object? pmName = null,
    Object? amName = null,
    Object? consultantsWithRecords = null,
  }) {
    return _then(_value.copyWith(
      projectSbsId: null == projectSbsId
          ? _value.projectSbsId
          : projectSbsId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      pmName: null == pmName
          ? _value.pmName
          : pmName // ignore: cast_nullable_to_non_nullable
              as String,
      amName: null == amName
          ? _value.amName
          : amName // ignore: cast_nullable_to_non_nullable
              as String,
      consultantsWithRecords: null == consultantsWithRecords
          ? _value.consultantsWithRecords
          : consultantsWithRecords // ignore: cast_nullable_to_non_nullable
              as List<ApiTaskSBSConsultantRecordDao>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTaskSBSDaoCopyWith<$Res>
    implements $ApiTaskSBSDaoCopyWith<$Res> {
  factory _$$_ApiTaskSBSDaoCopyWith(
          _$_ApiTaskSBSDao value, $Res Function(_$_ApiTaskSBSDao) then) =
      __$$_ApiTaskSBSDaoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int projectSbsId,
      String projectName,
      String company,
      String pmName,
      String amName,
      List<ApiTaskSBSConsultantRecordDao> consultantsWithRecords});
}

/// @nodoc
class __$$_ApiTaskSBSDaoCopyWithImpl<$Res>
    extends _$ApiTaskSBSDaoCopyWithImpl<$Res, _$_ApiTaskSBSDao>
    implements _$$_ApiTaskSBSDaoCopyWith<$Res> {
  __$$_ApiTaskSBSDaoCopyWithImpl(
      _$_ApiTaskSBSDao _value, $Res Function(_$_ApiTaskSBSDao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectSbsId = null,
    Object? projectName = null,
    Object? company = null,
    Object? pmName = null,
    Object? amName = null,
    Object? consultantsWithRecords = null,
  }) {
    return _then(_$_ApiTaskSBSDao(
      projectSbsId: null == projectSbsId
          ? _value.projectSbsId
          : projectSbsId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      pmName: null == pmName
          ? _value.pmName
          : pmName // ignore: cast_nullable_to_non_nullable
              as String,
      amName: null == amName
          ? _value.amName
          : amName // ignore: cast_nullable_to_non_nullable
              as String,
      consultantsWithRecords: null == consultantsWithRecords
          ? _value._consultantsWithRecords
          : consultantsWithRecords // ignore: cast_nullable_to_non_nullable
              as List<ApiTaskSBSConsultantRecordDao>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTaskSBSDao implements _ApiTaskSBSDao {
  const _$_ApiTaskSBSDao(
      {required this.projectSbsId,
      required this.projectName,
      required this.company,
      required this.pmName,
      required this.amName,
      required final List<ApiTaskSBSConsultantRecordDao>
          consultantsWithRecords})
      : _consultantsWithRecords = consultantsWithRecords;

  factory _$_ApiTaskSBSDao.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTaskSBSDaoFromJson(json);

  @override
  final int projectSbsId;
  @override
  final String projectName;
  @override
  final String company;
  @override
  final String pmName;
  @override
  final String amName;
  final List<ApiTaskSBSConsultantRecordDao> _consultantsWithRecords;
  @override
  List<ApiTaskSBSConsultantRecordDao> get consultantsWithRecords {
    if (_consultantsWithRecords is EqualUnmodifiableListView)
      return _consultantsWithRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultantsWithRecords);
  }

  @override
  String toString() {
    return 'ApiTaskSBSDao(projectSbsId: $projectSbsId, projectName: $projectName, company: $company, pmName: $pmName, amName: $amName, consultantsWithRecords: $consultantsWithRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTaskSBSDao &&
            (identical(other.projectSbsId, projectSbsId) ||
                other.projectSbsId == projectSbsId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.pmName, pmName) || other.pmName == pmName) &&
            (identical(other.amName, amName) || other.amName == amName) &&
            const DeepCollectionEquality().equals(
                other._consultantsWithRecords, _consultantsWithRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectSbsId,
      projectName,
      company,
      pmName,
      amName,
      const DeepCollectionEquality().hash(_consultantsWithRecords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTaskSBSDaoCopyWith<_$_ApiTaskSBSDao> get copyWith =>
      __$$_ApiTaskSBSDaoCopyWithImpl<_$_ApiTaskSBSDao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTaskSBSDaoToJson(
      this,
    );
  }
}

abstract class _ApiTaskSBSDao implements ApiTaskSBSDao {
  const factory _ApiTaskSBSDao(
      {required final int projectSbsId,
      required final String projectName,
      required final String company,
      required final String pmName,
      required final String amName,
      required final List<ApiTaskSBSConsultantRecordDao>
          consultantsWithRecords}) = _$_ApiTaskSBSDao;

  factory _ApiTaskSBSDao.fromJson(Map<String, dynamic> json) =
      _$_ApiTaskSBSDao.fromJson;

  @override
  int get projectSbsId;
  @override
  String get projectName;
  @override
  String get company;
  @override
  String get pmName;
  @override
  String get amName;
  @override
  List<ApiTaskSBSConsultantRecordDao> get consultantsWithRecords;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTaskSBSDaoCopyWith<_$_ApiTaskSBSDao> get copyWith =>
      throw _privateConstructorUsedError;
}
