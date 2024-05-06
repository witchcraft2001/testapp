// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/loaders/tl_splash.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/features/about/presentation/cubits/about_cubit.dart';
import 'package:terralinkapp/features/about/presentation/cubits/about_ready_data.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AboutCubit>(
      create: (_) => getIt<AboutCubit>()..init(),
      child: Scaffold(
        appBar: TlAppBar(title: S.current.settingsAboutApp),
        body: BlocBuilder<AboutCubit, CommonStateLite<AboutReadyData>>(
          builder: (_, state) => state.when(
            init: () => const TlProgressIndicator(),
            ready: (data) => SafeArea(
              child: TlSplash(
                message: S.current.aboutAppVersion(data.version),
                isAbout: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
