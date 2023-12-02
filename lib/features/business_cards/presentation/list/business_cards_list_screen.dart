// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/core/ui/widgets/tl_divider.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/features/business_cards/domain/cubits/business_cards_list_cubit.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/states/business_cards_list_state.dart';
import 'package:terralinkapp/features/business_cards/presentation/list/widgets/business_card_list_item.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

class BusinessCardsListScreen extends StatelessWidget {
  const BusinessCardsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BusinessCardsListCubit>()..onInit(),
      child: BlocConsumer<BusinessCardsListCubit, BusinessCardsListState>(
        listener: (context, state) {
          if (state is ShowState && state.toastMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.toastMessage)),
            );
            context.bloc<BusinessCardsListCubit>().resetToastMessage();
          }
        },
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
      InitState() => const TlProgressIndicator(),
      LoadingState() => const TlProgressIndicator(),
      ShowState(items: var items) => _getShowScreen(context, items)
    };
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
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const TlDivider(height: 2.0),
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
          onShare: (item) {
            final box = (context.findRenderObject() as RenderSliverList?)?.firstChild;
            final position = box != null ? box.localToGlobal(Offset.zero) & box.size : null;
            context.bloc<BusinessCardsListCubit>().onShareClicked(item, position);
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
        onConfirm: () {
          context.bloc<BusinessCardsListCubit>().onRemoveClicked(id);
          Navigator.pop(context);
        },
        confirmTitle: S.current.btnRemove,
      ),
    );
  }
}
