enum ApiTasksSummarySystemDao {
  eas('eas'),
  vacations('VacReq'),
  absence('Absence'),
  sbsLate('SBSLateHours'),
  sbsWeekly('Weeklyrecords');

  final String value;
  const ApiTasksSummarySystemDao(this.value);

  static ApiTasksSummarySystemDao fromJson(String value) =>
      ApiTasksSummarySystemDao.values.singleWhere((element) => element.value == value);
}
