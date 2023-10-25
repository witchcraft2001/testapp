// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/services.dart';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/dao/api_settings_preset_dao.dart';

@injectable
class ApiSettingsPresetsDataSource {
  ApiSettingsPresetsDataSource();

  Future<List<ApiSettingsPresetDao>> get() async {
    String data = await rootBundle.loadString('assets/jsons/api_settings_presets.json');

    final jsonResult = jsonDecode(data);

    final List<ApiSettingsPresetDao> result =
        List.from(jsonResult).map((item) => ApiSettingsPresetDao.fromJson(item)).toList();

    return result;
  }
}
