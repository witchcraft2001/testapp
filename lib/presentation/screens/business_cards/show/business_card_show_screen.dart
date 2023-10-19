// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/business_cards/show/widgets/business_card_widget.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'business_card_show_cubit.dart';
import 'business_card_show_state.dart';

class BusinessCardShowScreen extends StatelessWidget {
  final int id;

  const BusinessCardShowScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BusinessCardShowCubit>(param1: id),
      child: BlocBuilder<BusinessCardShowCubit, BusinessCardShowState>(
        builder: (context, state) {
          return Scaffold(
            appBar: TlAppBar(
              title: S.current.titleMyBusinessCards,
              actions: [
                Padding(
                  padding: TlSpaces.pr8,
                  child: IconButton(
                    onPressed: () {
                      final box = context.findRenderObject() as RenderBox?;
                      final position =
                          box != null ? box.localToGlobal(Offset.zero) & box.size : null;
                      context.bloc<BusinessCardShowCubit>().onShare(position);
                    },
                    icon: SvgPicture.asset(
                      TlAssets.iconShare,
                      colorFilter: ColorFilter.mode(
                        context.appTheme?.appTheme.primary ?? AppColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: _getWidgetByState(context, state),
          );
        },
      ),
    );
  }

  Widget _getWidgetByState(BuildContext context, BusinessCardShowState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const CenteredProgressIndicator(),
      ErrorState(message: var message) => ErrorMessage(
          message: message,
          button: TlButton(
            title: S.current.btnBack,
            type: AppBtnType.secondary,
            onPressed: Navigator.of(context).pop,
          ),
        ),
      ShowState(item: var item, vCardContent: var card) => _getShowScreen(context, item, card)
    };
  }

  Widget _getInitState(BuildContext context) {
    context.bloc<BusinessCardShowCubit>().onInit();

    return const CenteredProgressIndicator();
  }

  Widget _getShowScreen(BuildContext context, BusinessCard item, String? card) {
    return Padding(
      padding: TlSpaces.p24,
      child: TlCard(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                TlAssets.imageBusinessCardBackgroundTop,
                fit: BoxFit.fitWidth,
                alignment: Alignment.topRight,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: SvgPicture.asset(
                TlAssets.imageBusinessCardBackgroundBottom,
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomLeft,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: BusinessCardWidget(
                    card: item,
                    vCardContent: card,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
