// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/cubits/tasks_summary_cubit.dart';
import 'package:terralinkapp/presentation/screens/tasks/summary/domain/states/tasks_summary_cubit_state.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';
import 'package:terralinkapp/presentation/widgets/tl_tag.dart';

part 'shimmers/summary_card_shimmer.dart';
part 'shimmers/summary_grid_shimmer.dart';
part 'widgets/contetnt_show.dart';
part 'widgets/summary_card.dart';
part 'widgets/summary_grid.dart';

class TasksSummaryScreen extends StatelessWidget {
  const TasksSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksSummaryCubit>()..init(),
      child: Scaffold(
        appBar: TlAppBar(
          titleWidget: Padding(padding: TlSpaces.ph24, child: Text(S.current.tasks)),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: TlSpaces.ph24,
          child: BlocBuilder<TasksSummaryCubit, TasksSummaryCubitState>(
            builder: (_, state) => state.when(
              init: () => const _SummaryGridShimmer(),
              ready: (data) => _ContentShow(data: data),
            ),
          ),
        ),
      ),
    );
  }
}
