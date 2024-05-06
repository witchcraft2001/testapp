// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_svg_icon_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/tl_divider.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/core/utils/snacbar.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/presentation/list/cubits/business_cards_list_cubit.dart';
import 'package:terralinkapp/features/business_cards/presentation/list/cubits/business_cards_list_state.dart';
import 'package:terralinkapp/features/business_cards/presentation/list/widgets/business_card_list_item.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

class BusinessCardsListScreen extends StatelessWidget {
  const BusinessCardsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return BlocProvider(
      create: (_) => getIt<BusinessCardsListCubit>()..init(),
      child: BlocConsumer<BusinessCardsListCubit, BusinessCardsListState>(
        listener: (context, state) {
          if (state is ShowState && state.toastMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              buildSnackBar(
                theme: theme,
                data: TlSnackBarData(message: state.toastMessage),
              ),
            );

            context.bloc<BusinessCardsListCubit>().resetToastMessage();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: TlAppBar(
              title: S.current.businessCards,
              actions: [
                TlSvgIconButton(
                  padding: TlSpaces.pr8,
                  assetName: TlAssets.iconPlusCircle,
                  onPressed: () => _addCard(context),
                ),
              ],
            ),
            body: _getWidgetByState(context, state),
          );
        },
      ),
    );
  }

  Widget _getWidgetByState(BuildContext context, BusinessCardsListState state) {
    return switch (state) {
      InitState() => const TlProgressIndicator(),
      LoadingState() => const TlProgressIndicator(),
      ShowState(items: var items) => _getShowScreen(context, items)
    };
  }

  Widget _getShowScreen(BuildContext context, List<BusinessCard> items) {
    if (items.isEmpty) {
      return TlEmptyData(
        asset: TlAssets.imageBusinessCardsNo,
        message: S.current.businessCardsEmptyList,
        buttonTitle: S.current.businessCardsBtnAdd,
        onPressed: () => _addCard(context),
      );
    }

    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const TlDivider(height: 2.0),
      itemBuilder: (_, index) => BusinessCardListItem(item: items[index]),
    );
  }

  Future<void> _addCard(BuildContext context) async {
    await appNavigationService.pushNamed(
      context,
      AppRoutes.profileBusinessCardsEdit.name,
      pathParameters: {AppNavigationKeys.id: '0'},
    );

    if (context.mounted) {
      context.bloc<BusinessCardsListCubit>().refresh();
    }
  }
}
