// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transparent_image/transparent_image.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/init_greetings_card_directory_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/send_greeting_card_by_email_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/share_greeting_card_use_case.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/cubits/greeting_card_cubit.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/cubits/greeting_card_data.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'widgets/content.dart';
part 'widgets/content_ready.dart';
part 'widgets/content_bottom_buttons.dart';
part 'widgets/content_preview.dart';

class GreetingCardsScreen extends StatelessWidget {
  const GreetingCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GreetingCardCubit(
        getIt<InitGreetingCardsDirectoryUseCase>(),
        getIt<SendGreetingCardByEmailUseCase>(),
        getIt<ShareGreetingCardUseCase>(),
      )..init(),
      child: BlocBuilder<GreetingCardCubit, GreetingCardData>(
        builder: (_, state) => _Content(data: state),
      ),
    );
  }
}
