// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/loaders/tl_splash.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/features/about/domain/about_screen_cubit.dart';
import 'package:terralinkapp/features/about/domain/about_screen_state.dart';
import 'package:terralinkapp/generated/l10n.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AboutCubit>(
      create: (_) => AboutCubit()..init(),
      child: Scaffold(
        appBar: TlAppBar(title: S.current.settingsAboutApp),
        body: BlocBuilder<AboutCubit, AboutCubitState>(
          builder: (_, state) => switch (state) {
            InitState() => const TlProgressIndicator(),
            ReadyState(version: final version) => SafeArea(
                child: TlSplash(
                  message: S.current.aboutAppVersion(version),
                  isAbout: true,
                ),
              ),
          },
        ),
      ),
    );
  }
}
