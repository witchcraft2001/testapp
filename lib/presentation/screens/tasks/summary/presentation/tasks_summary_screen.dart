// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';

part 'widgets/summary_card.dart';

class TasksSummaryScreen extends StatelessWidget {
  const TasksSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: Padding(padding: TlSpaces.ph24, child: Text(S.current.tasksSummary)),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: TlSpaces.ph24v12,
        child: Column(
          children: [
            // ToDo сделать компонент-карточку
            _SummaryCard(
              title: S.current.tasksEAS,
              count: 0,
              route: AppRoutes.eas.name,
            ),
            _SummaryCard(
              title: S.current.tasksSBS,
              count: 0,
              route: AppRoutes.sbs.name,
            ),
          ],
        ),
      ),
    );
  }
}
