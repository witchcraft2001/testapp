// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/core/ui/widgets/tl_tag.dart';
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_eas_summary_cubit.dart';
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_late_summary_cubit.dart';
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_sbs_weekly_summary_cubit.dart';
import 'package:terralinkapp/features/tasks/summary/domain/cubits/tasks_vacation_summary_cubit.dart';
import 'package:terralinkapp/features/tasks/summary/domain/states/tasks_summary_cubit_state.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/summary_card_shimmer.dart';
part 'widgets/content_show.dart';
part 'widgets/summary_card.dart';
part 'widgets/summary_grid.dart';

class TasksSummaryScreen extends StatelessWidget {
  const TasksSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<TasksSbsWeeklySummaryCubit>()..init()),
        BlocProvider(create: (_) => getIt<TasksSbsLateSummaryCubit>()..init()),
        BlocProvider(create: (_) => getIt<TasksEasSummaryCubit>()..init()),
        BlocProvider(create: (_) => getIt<TasksVacationSummaryCubit>()..init()),
      ],
      child: Scaffold(
        appBar: TlAppBar(
          titleWidget: Padding(padding: TlSpaces.ph24, child: Text(S.current.tasks)),
          backgroundColor: Colors.transparent,
        ),
        body: const Padding(
          padding: TlSpaces.ph24,
          child: _ContentShow(),
        ),
      ),
    );
  }
}
