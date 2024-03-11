// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/core/utils/share.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/clear_cache_greeting_templates_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/get_greeting_templates_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/init_greetings_card_directory_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/send_greeting_card_by_email_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/share_greeting_card_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/cubits/greeting_cards_cubit.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/cubits/greeting_cards_ready_data.dart';
import 'package:terralinkapp/features/media_content/presentation/params/media_content_block_params.dart';
import 'package:terralinkapp/features/media_content/presentation/widgets/media_content_block.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/content_shimmer.dart';
part 'widgets/content_error.dart';
part 'widgets/content_ready/content_ready.dart';
part 'widgets/content_ready/body/body.dart';
part 'widgets/content_ready/body/body_bottom_buttons.dart';
part 'widgets/content_ready/body/body_fields.dart';
part 'widgets/content_ready/body/body_preview.dart';
part 'widgets/content_ready/body/body_templates.dart';

class GreetingCardsScreen extends StatelessWidget {
  const GreetingCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.unfocus,
      child: BlocProvider(
        create: (_) => GreetingCardsCubit(
          getIt<InitGreetingCardsDirectoryUseCase>(),
          getIt<GetGreetingTemplatesUseCase>(),
          getIt<ClearCacheGreetingTemplatesUseCase>(),
          getIt<SendGreetingCardByEmailUseCase>(),
          getIt<ShareGreetingCardUseCase>(),
        )
          ..init()
          ..get(),
        child: BlocBuilder<GreetingCardsCubit, CommonState<GreetingCardsReadyData>>(
          builder: (_, state) => Scaffold(
            appBar: TlAppBar(title: S.current.greetingCards),
            body: state.when(
              loading: () => const _ContentShimmer(),
              ready: (data) => _ContentReady(data: data),
              error: (message, type) => _ContentError(message: message, type: type),
            ),
          ),
        ),
      ),
    );
  }
}
