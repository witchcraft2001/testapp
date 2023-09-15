// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/data/use_cases/business_cards/get_all_business_cards_use_case.dart';
import 'package:terralinkapp/data/use_cases/business_cards/remove_business_card_by_id_use_case.dart';
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/business_cards/list/business_card_list_item.dart';
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_cubit.dart';
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_state.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/tl_dialog_confirm.dart';

class BusinessCardsListScreen extends StatelessWidget {
  const BusinessCardsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BusinessCardsListCubit(
        getIt<GetAllBusinessCardsUseCase>(),
        getIt<RemoveBusinessCardByIdUseCase>(),
      ),
      child: BlocConsumer<BusinessCardsListCubit, BusinessCardsListState>(
        listener: (_, __) {},
        builder: (context, state) {
          return Scaffold(
            appBar: TlAppBar(
              title: S.current.titleMyBusinessCards,
              actions: [
                Padding(
                  padding: TlSpaces.pr8,
                  child: IconButton(
                    onPressed: () => _addCard(context),
                    icon: SvgPicture.asset(TlAssets.iconPlusCircle),
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

  Widget _getWidgetByState(BuildContext context, BusinessCardsListState state) {
    return switch (state) {
      InitState() => _getInitState(context),
      LoadingState() => const CenteredProgressIndicator(),
      ShowState(items: var items) => _getShowScreen(context, items)
    };
  }

  Widget _getInitState(BuildContext context) {
    context.bloc<BusinessCardsListCubit>().onInit();

    return const CenteredProgressIndicator();
  }

  Widget _getShowScreen(BuildContext context, List<BusinessCard> items) {
    if (items.isEmpty) {
      return TlEmptyData(
        asset: TlAssets.imageNoBusinessCards,
        message: S.current.messageNoBusinessCards,
        buttonTitle: S.current.btnAddBusinessCard,
        onPressed: () => _addCard(context),
      );
    }

    return _getList(context, items);
  }

  Widget _getList(BuildContext context, List<BusinessCard> items) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return BusinessCardListItem(
          item: items[index],
          onEdit: (item) async {
            await appNavigationService.pushNamed(
              context,
              AppRoutes.profileBusinessCardsEdit.name,
              pathParameters: {AppNavigationKeys.id: '${item.id}'},
            );

            if (context.mounted) {
              context.bloc<BusinessCardsListCubit>().onRefresh();
            }
          },
          onRemove: (item) => _handleShowDialog(context, item.id),
          onShow: (item) => appNavigationService.goNamed(
            context,
            AppRoutes.profileBusinessCardsShow.name,
            pathParameters: {AppNavigationKeys.id: '${item.id}'},
          ),
        );
      },
    );
  }

  Future<void> _addCard(BuildContext context) async {
    await appNavigationService.pushNamed(
      context,
      AppRoutes.profileBusinessCardsEdit.name,
      pathParameters: {AppNavigationKeys.id: '0'},
    );

    if (context.mounted) {
      context.bloc<BusinessCardsListCubit>().onRefresh();
    }
  }

  void _handleShowDialog(BuildContext context, int id) {
    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: S.current.dialogRemoveBusinessCard,
        onConfirm: () => context.bloc<BusinessCardsListCubit>().onRemoveClicked(id),
        confirmTitle: S.current.btnRemove,
      ),
    );
  }
}
