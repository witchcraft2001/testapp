// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/features/about/domain/use_cases/get_app_info_use_case.dart';
import 'package:terralinkapp/features/about/presentation/cubits/about_ready_data.dart';

@injectable
class AboutCubit extends Cubit<CommonStateLite<AboutReadyData>> {
  final GetAppInfoUseCase _getAppInfoUseCase;

  AboutCubit(this._getAppInfoUseCase) : super(const CommonStateLite.init());

  Future<void> init() async {
    emit(const CommonStateLite.init());

    final info = await _getAppInfoUseCase();

    emit(CommonStateLite.ready(AboutReadyData(version: info.version)));
  }
}
