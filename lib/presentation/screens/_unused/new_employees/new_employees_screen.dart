// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/_unused/get_new_employees_use_case.dart';
import 'package:terralinkapp/domain/new_employee.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/screens/_unused/new_employees/new_employees_state.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/avatar.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/ruler.dart';
import 'new_employees_cubit.dart';

class NewEmployeesScreen extends StatelessWidget {
  const NewEmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewEmployeesCubit(getIt<GetNewEmployeesUseCase>()),
      child: _getScreen(context),
    );
  }

  Widget _getScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme?.appTheme.accent,
      body: SafeArea(
        child: BlocConsumer<NewEmployeesCubit, NewEmployeesState>(
          listener: (context, state) {},
          builder: (context, state) {
            return _getWidgetByState(context, state);
          },
        ),
      ),
    );
  }

  Widget _getWidgetByState(BuildContext context, NewEmployeesState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const CenteredProgressIndicator(),
      ShowState(employees: var employees, currentScreen: var index, countDownTimer: var timer, title: var title, subtitle: var subtitle) =>
        _getShowScreen(context, employees, index, timer, title, subtitle)
    };
  }

  Widget _getInitState(BuildContext context) {
    BlocProvider.of<NewEmployeesCubit>(context).onInit();

    return const CenteredProgressIndicator();
  }

  Widget _getShowScreen(BuildContext context, List<NewEmployee> employees, int index, int timer, String title, String subtitle) {
    return GestureDetector(
      onTapUp: (details) {
        var width = MediaQuery.of(context).size.width;
        var cubit = BlocProvider.of<NewEmployeesCubit>(context);
        if (details.globalPosition.dx >= width / 2) {
          cubit.onNext();
        } else {
          cubit.onPrevious();
        }
      },
      onHorizontalDragEnd: (details) {
        var cubit = BlocProvider.of<NewEmployeesCubit>(context);
        if (details.primaryVelocity == null) return;
        if (details.primaryVelocity! < 0) {
          cubit.onNext();
        } else {
          cubit.onPrevious();
        }
      },
      child: switch (index) {
        > 0 => _getEmployeePage(context, employees, index - 1, index, timer),
        _ => _getStartPage(context, title, subtitle, employees.length + 1, timer)
      },
    );
  }

  Widget _getEmployeePage(BuildContext context, List<NewEmployee> employees, int employeeIndex, int pageIndex, int timer) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 210,
              color: context.appTheme?.appTheme.accent,
            ),
            Expanded(
              child: Container(color: context.appTheme?.appTheme.backgroundDashboardsForms),
            ),
          ],
        ),
        _getHeader(context, employees.length + 1, employeeIndex + 1, timer),
        Positioned(
          top: 48,
          right: 24,
          child: GestureDetector(
            child: SvgPicture.asset('assets/images/ic_close_32.svg'),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 290),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  employees[employeeIndex].name,
                  style: ThemeProvider.headlineSmall.copyWith(color: context.appTheme?.appTheme.textMain, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  employees[employeeIndex].position,
                  style: ThemeProvider.bodyMedium.copyWith(color: context.appTheme?.appTheme.textMain),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                child: Text(
                  employees[employeeIndex].about,
                  style: ThemeProvider.bodyLarge.copyWith(color: context.appTheme?.appTheme.textMain),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 76.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Avatar(
                avatarUrl: employees[employeeIndex].avatarUrl,
                size: AvatarSize.xl,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getStartPage(BuildContext context, String title, String subtitle, int count, int timer) {
    return Stack(
      children: [
        _getHeader(context, count, 0, timer),
        Positioned(
          top: 48,
          right: 24,
          child: GestureDetector(
            child: SvgPicture.asset('assets/images/ic_close_32.svg'),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            children: [
              Text(
                title,
                style: ThemeProvider.headlineSmall.copyWith(color: context.appTheme?.appTheme.whiteOnColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
                child: Text(
                  subtitle,
                  style: ThemeProvider.headlineSmall.copyWith(color: context.appTheme?.appTheme.whiteOnColor, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getHeader(BuildContext context, int count, int index, int timer) {
    return Padding(
      padding: const EdgeInsets.only(top: 36.0, bottom: 12.0),
      child: Column(
        children: [Ruler(count: count, index: index, progress: 0)],
      ),
    );
  }
}
