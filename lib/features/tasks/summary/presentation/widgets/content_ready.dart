part of '../tasks_summary_screen.dart';

class _ContentReady extends StatelessWidget {
  const _ContentReady();

  @override
  Widget build(BuildContext context) {
    return TlRefresh(
      onRefresh: () async {
        context.bloc<TasksSbsWeeklySummaryCubit>().refresh();
        context.bloc<TasksSbsLateSummaryCubit>().refresh();
        context.bloc<TasksEasSummaryCubit>().refresh();
        context.bloc<TasksVacationSummaryCubit>().refresh();
      },
      child: _SummaryGrid(
        children: [
          BlocBuilder<TasksSbsWeeklySummaryCubit, CommonStateLite<TasksSummaryReadyData>>(
            builder: (_, state) => state.when(
              init: () => const _SummaryCardShimmer(),
              ready: (data) => _SummaryCard(
                title: S.current.tasksSbsWeekly,
                asset: TlAssets.iconTasksSbs,
                count: data.count,
                route: AppRoutes.sbsWeekly.name,
              ),
            ),
          ),
          BlocBuilder<TasksSbsLateSummaryCubit, CommonStateLite<TasksSummaryReadyData>>(
            builder: (_, state) => state.when(
              init: () => const _SummaryCardShimmer(),
              ready: (data) => _SummaryCard(
                title: S.current.tasksSbsLate,
                asset: TlAssets.iconTasksSbs,
                count: data.count,
                route: AppRoutes.sbsLate.name,
              ),
            ),
          ),
          BlocBuilder<TasksEasSummaryCubit, CommonStateLite<TasksSummaryReadyData>>(
            builder: (_, state) => state.when(
              init: () => const _SummaryCardShimmer(),
              ready: (data) => _SummaryCard(
                title: S.current.tasksEas,
                asset: TlAssets.iconTasksEas,
                count: data.count,
                route: AppRoutes.eas.name,
              ),
            ),
          ),
          BlocBuilder<TasksVacationSummaryCubit, CommonStateLite<TasksSummaryReadyData>>(
            builder: (_, state) => state.when(
              init: () => const _SummaryCardShimmer(),
              ready: (data) => _SummaryCard(
                title: S.current.tasksVacation,
                asset: TlAssets.iconTasksVacation,
                count: data.count,
                route: AppRoutes.vacations.name,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
