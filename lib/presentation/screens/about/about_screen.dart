// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/about/about_screen_cubit.dart';
import 'package:terralinkapp/presentation/screens/about/about_screen_state.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/loaders/tl_splash.dart';
import 'package:terralinkapp/presentation/widgets/tl_progress_indicator.dart';

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
                child: TlSplash(message: S.current.appVersion(version)),
              ),
          },
        ),
      ),
    );
  }
}
