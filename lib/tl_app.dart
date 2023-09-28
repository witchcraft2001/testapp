// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/data/providers/auth_provider.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart';
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart';
import 'package:terralinkapp/presentation/theme/domain/states/theme_cubit_state.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'generated/l10n.dart';
import 'injection.dart';

final _routerConfig = appNavigationService.config();

class TlApp extends StatelessWidget {
  const TlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<ThemeCubit>()..init(),
        ),
        BlocProvider(
          create: (_) => getIt<RegionCubit>()..init(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeCubitState>(
        builder: (_, state) => state.when(
          init: () => const SizedBox(),
          ready: (state) => ThemeProvider(
            isDarkTheme: state.isSystem ? context.brightness == Brightness.dark : state.isDark,
            child: const _TlApp(),
          ),
        ),
      ),
    );
  }
}

class _TlApp extends StatelessWidget {
  const _TlApp();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => getIt<AuthProvider>().auth,
      child: MaterialApp.router(
        localeResolutionCallback: _getSupportedLocale,
        debugShowCheckedModeBanner: false,
        routerConfig: _routerConfig,
        title: Constants.appTitle,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeProvider.of(context)!.themeData(),
        darkTheme: ThemeProvider.of(context)!.themeData(),
        themeMode: ThemeMode.light,
      ),
    );
  }

  Locale _getSupportedLocale(Locale? locale, Iterable<Locale> supportedLocales) {
    final current = locale ?? Locale(Intl.getCurrentLocale());

    return S.delegate.supportedLocales
            .firstWhereOrNull((l) => l.languageCode == current.languageCode) ??
        S.delegate.supportedLocales.first;
  }
}
