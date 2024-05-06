// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_task_sbs_weekly_consultant_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiTaskSbsWeeklyConsultantDao _$ApiTaskSbsWeeklyConsultantDaoFromJson(
    Map<String, dynamic> json) {
  return _ApiTaskSbsWeeklyConsultantDao.fromJson(json);
}

/// @nodoc
mixin _$ApiTaskSbsWeeklyConsultantDao {
  @JsonKey(name: 'consultantSbsId')
  int get consultantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get totalHours => throw _privateConstructorUsedError;
  double get totalHoursDbl => throw _privateConstructorUsedError;
  @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
  ApiTaskSbsHoursTypeDao get hoursType => throw _privateConstructorUsedError;
  @JsonKey(name: 'registerRecords')
  List<ApiTaskSbsWeeklyRecordDao> get records =>
      throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTaskSbsWeeklyConsultantDaoCopyWith<ApiTaskSbsWeeklyConsultantDao>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTaskSbsWeeklyConsultantDaoCopyWith<$Res> {
  factory $ApiTaskSbsWeeklyConsultantDaoCopyWith(
          ApiTaskSbsWeeklyConsultantDao value,
          $Res Function(ApiTaskSbsWeeklyConsultantDao) then) =
      _$ApiTaskSbsWeeklyConsultantDaoCopyWithImpl<$Res,
          ApiTaskSbsWeeklyConsultantDao>;
  @useResult
  $Res call(
      {@JsonKey(name: 'consultantSbsId') int consultantId,
      String name,
      String totalHours,
      double totalHoursDbl,
      @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
      ApiTaskSbsHoursTypeDao hoursType,
      @JsonKey(name: 'registerRecords') List<ApiTaskSbsWeeklyRecordDao> records,
      String? login});
}

/// @nodoc
class _$ApiTaskSbsWeeklyConsultantDaoCopyWithImpl<$Res,
        $Val extends ApiTaskSbsWeeklyConsultantDao>
    implements $ApiTaskSbsWeeklyConsultantDaoCopyWith<$Res> {
  _$ApiTaskSbsWeeklyConsultantDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantId = null,
    Object? name = null,
    Object? totalHours = null,
    Object? totalHoursDbl = null,
    Object? hoursType = null,
    Object? records = null,
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      consultantId: null == consultantId
          ? _value.consultantId
          : consultantId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as String,
      totalHoursDbl: null == totalHoursDbl
          ? _value.totalHoursDbl
          : totalHoursDbl // ignore: cast_nullable_to_non_nullable
              as double,
      hoursType: null == hoursType
          ? _value.hoursType
          : hoursType // ignore: cast_nullable_to_non_nullable
              as ApiTaskSbsHoursTypeDao,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<ApiTaskSbsWeeklyRecordDao>,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiTaskSbsWeeklyConsultantDaoImplCopyWith<$Res>
    implements $ApiTaskSbsWeeklyConsultantDaoCopyWith<$Res> {
  factory _$$ApiTaskSbsWeeklyConsultantDaoImplCopyWith(
          _$ApiTaskSbsWeeklyConsultantDaoImpl value,
          $Res Function(_$ApiTaskSbsWeeklyConsultantDaoImpl) then) =
      __$$ApiTaskSbsWeeklyConsultantDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'consultantSbsId') int consultantId,
      String name,
      String totalHours,
      double totalHoursDbl,
      @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
      ApiTaskSbsHoursTypeDao hoursType,
      @JsonKey(name: 'registerRecords') List<ApiTaskSbsWeeklyRecordDao> records,
      String? login});
}

/// @nodoc
class __$$ApiTaskSbsWeeklyConsultantDaoImplCopyWithImpl<$Res>
    extends _$ApiTaskSbsWeeklyConsultantDaoCopyWithImpl<$Res,
        _$ApiTaskSbsWeeklyConsultantDaoImpl>
    implements _$$ApiTaskSbsWeeklyConsultantDaoImplCopyWith<$Res> {
  __$$ApiTaskSbsWeeklyConsultantDaoImplCopyWithImpl(
      _$ApiTaskSbsWeeklyConsultantDaoImpl _value,
      $Res Function(_$ApiTaskSbsWeeklyConsultantDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultantId = null,
    Object? name = null,
    Object? totalHours = null,
    Object? totalHoursDbl = null,
    Object? hoursType = null,
    Object? records = null,
    Object? login = freezed,
  }) {
    return _then(_$ApiTaskSbsWeeklyConsultantDaoImpl(
      consultantId: null == consultantId
          ? _value.consultantId
          : consultantId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as String,
      totalHoursDbl: null == totalHoursDbl
          ? _value.totalHoursDbl
          : totalHoursDbl // ignore: cast_nullable_to_non_nullable
              as double,
      hoursType: null == hoursType
          ? _value.hoursType
          : hoursType // ignore: cast_nullable_to_non_nullable
              as ApiTaskSbsHoursTypeDao,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<ApiTaskSbsWeeklyRecordDao>,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiTaskSbsWeeklyConsultantDaoImpl
    implements _ApiTaskSbsWeeklyConsultantDao {
  const _$ApiTaskSbsWeeklyConsultantDaoImpl(
      {@JsonKey(name: 'consultantSbsId') required this.consultantId,
      required this.name,
      required this.totalHours,
      required this.totalHoursDbl,
      @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
      required this.hoursType,
      @JsonKey(name: 'registerRecords')
      required final List<ApiTaskSbsWeeklyRecordDao> records,
      this.login})
      : _records = records;

  factory _$ApiTaskSbsWeeklyConsultantDaoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApiTaskSbsWeeklyConsultantDaoImplFromJson(json);

  @override
  @JsonKey(name: 'consultantSbsId')
  final int consultantId;
  @override
  final String name;
  @override
  final String totalHours;
  @override
  final double totalHoursDbl;
  @override
  @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
  final ApiTaskSbsHoursTypeDao hoursType;
  final List<ApiTaskSbsWeeklyRecordDao> _records;
  @override
  @JsonKey(name: 'registerRecords')
  List<ApiTaskSbsWeeklyRecordDao> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final String? login;

  @override
  String toString() {
    return 'ApiTaskSbsWeeklyConsultantDao(consultantId: $consultantId, name: $name, totalHours: $totalHours, totalHoursDbl: $totalHoursDbl, hoursType: $hoursType, records: $records, login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTaskSbsWeeklyConsultantDaoImpl &&
            (identical(other.consultantId, consultantId) ||
                other.consultantId == consultantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.totalHoursDbl, totalHoursDbl) ||
                other.totalHoursDbl == totalHoursDbl) &&
            (identical(other.hoursType, hoursType) ||
                other.hoursType == hoursType) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      consultantId,
      name,
      totalHours,
      totalHoursDbl,
      hoursType,
      const DeepCollectionEquality().hash(_records),
      login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTaskSbsWeeklyConsultantDaoImplCopyWith<
          _$ApiTaskSbsWeeklyConsultantDaoImpl>
      get copyWith => __$$ApiTaskSbsWeeklyConsultantDaoImplCopyWithImpl<
          _$ApiTaskSbsWeeklyConsultantDaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTaskSbsWeeklyConsultantDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiTaskSbsWeeklyConsultantDao
    implements ApiTaskSbsWeeklyConsultantDao {
  const factory _ApiTaskSbsWeeklyConsultantDao(
      {@JsonKey(name: 'consultantSbsId') required final int consultantId,
      required final String name,
      required final String totalHours,
      required final double totalHoursDbl,
      @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
      required final ApiTaskSbsHoursTypeDao hoursType,
      @JsonKey(name: 'registerRecords')
      required final List<ApiTaskSbsWeeklyRecordDao> records,
      final String? login}) = _$ApiTaskSbsWeeklyConsultantDaoImpl;

  factory _ApiTaskSbsWeeklyConsultantDao.fromJson(Map<String, dynamic> json) =
      _$ApiTaskSbsWeeklyConsultantDaoImpl.fromJson;

  @override
  @JsonKey(name: 'consultantSbsId')
  int get consultantId;
  @override
  String get name;
  @override
  String get totalHours;
  @override
  double get totalHoursDbl;
  @override
  @JsonKey(name: 'hoursType', defaultValue: ApiTaskSbsHoursTypeDao.paid)
  ApiTaskSbsHoursTypeDao get hoursType;
  @override
  @JsonKey(name: 'registerRecords')
  List<ApiTaskSbsWeeklyRecordDao> get records;
  @override
  String? get login;
  @override
  @JsonKey(ignore: true)
  _$$ApiTaskSbsWeeklyConsultantDaoImplCopyWith<
          _$ApiTaskSbsWeeklyConsultantDaoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
