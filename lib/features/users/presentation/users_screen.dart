// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/search_field.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/features/likes/common/presentation/widgets/user_tile.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';
import 'package:terralinkapp/features/users/presentation/cubits/users_cubit.dart';
import 'package:terralinkapp/features/users/presentation/cubits/users_ready_data.dart';
import 'package:terralinkapp/features/users/presentation/shimmers/user_tile_shimmer.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/content_shimmer.dart';
part 'shimmers/users_list_shimmer.dart';
part 'widgets/content_error.dart';
part 'widgets/content_ready/content_ready.dart';
part 'widgets/content_ready/content_ready_body.dart';
part 'widgets/content_ready/content_ready_body_data.dart';

class UsersScreen extends StatelessWidget {
  final void Function(ApiUser) onSelect;

  const UsersScreen({
    super.key,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UsersCubit>()..init(),
      child: GestureDetector(
        onTap: context.unfocus,
        child: Scaffold(
          body: BlocBuilder<UsersCubit, CommonState<UsersReadyData>>(
            builder: (context, state) => state.when(
              init: () => const _ContentShimmer(),
              ready: (data) => _ContentReady(
                data: data,
                onSelect: onSelect,
                onGetNext: () => context.bloc<UsersCubit>().get(),
                onRefresh: () => context.bloc<UsersCubit>().get(isRefresh: true),
              ),
              error: (message, type) => _ContentError(message: message, type: type),
            ),
          ),
        ),
      ),
    );
  }
}
