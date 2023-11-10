part of '../tasks_summary_screen.dart';

class _ContentShow extends StatelessWidget {
  const _ContentShow();

  @override
  Widget build(BuildContext context) {
    return _SummaryGrid(
      children: [
        BlocBuilder<TasksSbsWeeklySummaryCubit, TasksSummaryCubitState>(
          builder: (context, state) => state.when(
            init: () => const _SummaryCardShimmer(),
            ready: (data) => _SummaryCard(
              title: S.current.tasksSbsWeekly,
              asset: TlAssets.iconTasksSbs,
              count: data.count,
              route: AppRoutes.sbsWeekly.name,
            ),
          ),
        ),
        BlocBuilder<TasksSbsLateSummaryCubit, TasksSummaryCubitState>(
          builder: (context, state) => state.when(
            init: () => const _SummaryCardShimmer(),
            ready: (data) => _SummaryCard(
              title: S.current.tasksSbsLate,
              asset: TlAssets.iconTasksSbs,
              count: data.count,
              route: AppRoutes.sbsLate.name,
            ),
          ),
        ),
        BlocBuilder<TasksEasSummaryCubit, TasksSummaryCubitState>(
          builder: (context, state) => state.when(
            init: () => const _SummaryCardShimmer(),
            ready: (data) => _SummaryCard(
              title: S.current.tasksEas,
              asset: TlAssets.iconTasksEas,
              count: data.count,
              route: AppRoutes.eas.name,
            ),
          ),
        ),
      ],
    );
  }
}
