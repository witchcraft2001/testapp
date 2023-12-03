// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_tag.dart';
import 'package:terralinkapp/core/utils/colors.dart';
import 'package:terralinkapp/core/utils/common.dart';
import 'package:terralinkapp/features/news/domain/cubits/news_cubit.dart';
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';
import 'package:terralinkapp/features/news/domain/states/news_cubit_state.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/content_card_shimmer.dart';
part 'shimmers/content_shimmer.dart';
part 'widgets/content.dart';
part 'widgets/content_card.dart';
part 'widgets/card_image.dart';
part 'widgets/card_subtitle.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsCubit>(
      create: (_) => getIt<NewsCubit>()..init(),
      child: Scaffold(
        body: BlocBuilder<NewsCubit, NewsCubitState>(
          builder: (context, state) => state.when(
            loading: () => const _ContentShimmer(),
            ready: (data) => _Content(data: data),
            error: (message) => TlErrorData(
              message: message,
              onPressed: context.bloc<NewsCubit>().refresh,
            ),
          ),
        ),
      ),
    );
  }
}
