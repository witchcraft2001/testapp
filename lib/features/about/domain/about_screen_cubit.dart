// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

// Project imports:
import 'package:terralinkapp/features/about/domain/about_screen_state.dart';

class AboutCubit extends Cubit<AboutCubitState> {
  AboutCubit() : super(InitState());

  Future<void> init() async {
    emit(InitState());

    final packageInfo = await PackageInfo.fromPlatform();

    emit(ReadyState(version: packageInfo.version));
  }
}
