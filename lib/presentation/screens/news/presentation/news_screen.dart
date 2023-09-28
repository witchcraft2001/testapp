// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/domain/entities/api_news.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/news/domain/cubits/news_cubit.dart';
import 'package:terralinkapp/presentation/screens/news/domain/states/news_cubit_state.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/utils/colors.dart';
import 'package:terralinkapp/presentation/utils/common.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/presentation/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_tag.dart';

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
          builder: (_, state) => state.when(
            loading: () => const CenteredProgressIndicator(),
            ready: (data) => _ContentData(data: data),
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
