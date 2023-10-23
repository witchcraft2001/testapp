part of '../tasks_summary_screen.dart';

class _ContentShow extends StatelessWidget {
  final TasksSummaryState data;

  const _ContentShow({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return _SummaryGrid(
      children: [
        _SummaryCard(
          title: S.current.tasksSBS,
          asset: TlAssets.iconTasksSBS,
          count: data.sbs,
          route: AppRoutes.sbs.name,
        ),
        _SummaryCard(
          title: S.current.tasksEAS,
          asset: TlAssets.iconTasksEAS,
          count: data.eas,
          route: AppRoutes.eas.name,
        ),
        // ToDo для последущих типов заявок
        // _SummaryCard(
        //   title: S.current.tasksVacations,
        //   asset: TlAssets.iconTasksVacations,
        //   count: data.vacations,
        //   route: AppRoutes.vacations.name,
        // ),
        // _SummaryCard(
        //   title: S.current.tasksSickLeaves,
        //   asset: TlAssets.iconTasksSickLeaves,
        //   count: data.sickLeaves,
        //   route: AppRoutes.sickLeaves.name,
        // ),
      ],
    );
  }
}
