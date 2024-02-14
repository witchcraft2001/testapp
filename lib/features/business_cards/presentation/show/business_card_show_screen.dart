// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/presentation/show/widgets/business_card_widget.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import '../../domain/cubits/business_card_show_cubit.dart';
import '../../domain/states/business_card_show_state.dart';

class BusinessCardShowScreen extends StatelessWidget {
  final int id;

  const BusinessCardShowScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BusinessCardShowCubit>(param1: id),
      child: BlocBuilder<BusinessCardShowCubit, BusinessCardShowState>(
        builder: (context, state) => Scaffold(
          appBar: TlAppBar(
            title: S.current.businessCards,
            actions: [
              Padding(
                padding: TlSpaces.pr8,
                child: IconButton(
                  onPressed: () {
                    final box = context.findRenderObject() as RenderBox?;
                    final position = box != null ? box.localToGlobal(Offset.zero) & box.size : null;
                    context.bloc<BusinessCardShowCubit>().share(position);
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
        ),
      ),
    );
  }

  Widget _getWidgetByState(BuildContext context, BusinessCardShowState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const TlProgressIndicator(),
      ErrorState(message: final message) => TlErrorData(
          message: message,
          buttonTitle: S.current.btnBack,
          onPressed: Navigator.of(context).pop,
        ),
      ShowState(item: final item, vCardContent: final card) => _getShowScreen(context, item, card)
    };
  }

  Widget _getInitState(BuildContext context) {
    context.bloc<BusinessCardShowCubit>().init();

    return const TlProgressIndicator();
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
