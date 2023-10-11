// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';
import 'package:terralinkapp/presentation/widgets/tl_tag.dart';

part 'widgets/summary_card.dart';

class TasksSummaryScreen extends StatelessWidget {
  const TasksSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: Padding(padding: TlSpaces.ph24, child: Text(S.current.tasks)),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: TlSpaces.ph24,
        child: Column(
          children: [
            _SummaryCard(
              title: S.current.tasksSBS,
              asset: TlAssets.iconTasksSBS,
              count: 200,
              route: AppRoutes.sbs.name,
            ),
            _SummaryCard(
              title: S.current.tasksEAS,
              asset: TlAssets.iconTasksEAS,
              count: 5,
              route: AppRoutes.eas.name,
            ),
            _SummaryCard(
              title: S.current.tasksVacations,
              asset: TlAssets.iconTasksVacations,
              count: 13,
              route: AppRoutes.vacations.name,
            ),
            _SummaryCard(
              title: S.current.tasksSickLeaves,
              asset: TlAssets.iconTasksSickLeaves,
              count: 91,
              route: AppRoutes.sickLeaves.name,
            ),
          ],
        ),
      ),
    );
  }
}
