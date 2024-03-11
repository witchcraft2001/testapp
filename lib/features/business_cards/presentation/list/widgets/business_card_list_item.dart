// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/core/ui/widgets/tl_tag.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/core/utils/share.dart';
import 'package:terralinkapp/features/business_cards/domain/cubits/business_cards_list_cubit.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card_locale.dart';
import 'package:terralinkapp/generated/l10n.dart';

class BusinessCardListItem extends StatelessWidget {
  final BusinessCard item;

  const BusinessCardListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final actions = _buildActions(context);

    return Slidable(
      key: ValueKey(item.id),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: TlSizes.cardDocumentHeight * actions.length / context.width,
        // ToDo доработать компонент TLSlidableButton для ripple-эффекта
        // extentRatio: TlSizes.taskSlidableActionWidth * actions.length / context.width,
        children: actions,
      ),
      child: InkWell(
        onTap: () => _handleShow(context),
        child: Container(
          height: TlSizes.cardDocumentHeight,
          color: context.appTheme?.colors.bgMenu,
          child: Padding(
            padding: TlSpaces.ph20v12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    item.position,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: context.appTheme?.text.w500s16cMain,
                  ),
                ),
                TlTag(
                  tag: item.locale.value,
                  margin: TlSpaces.pt8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () {
          context.bloc<BusinessCardsListCubit>().share(item, getSharePosition(context));
        },
        leading: SvgPicture.asset(TlAssets.iconShare),
        style: AppBtnStyle.leadingBase,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () => _handleEdit(context),
        leading: SvgPicture.asset(TlAssets.iconEdit),
        type: AppBtnType.secondary,
        style: AppBtnStyle.leadingBase,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () => _handleShowDialogRemove(context),
        leading: SvgPicture.asset(TlAssets.iconTrash),
        type: AppBtnType.danger,
        style: AppBtnStyle.leadingNone,
        format: AppBtnFormat.square,
      ),
      // ToDo доработать компонент TLSlidableButton для ripple-эффекта
      // TLSlidableButton(
      //   assetName: TlAssets.iconShare,
      //   assetColor: AppColors.whiteOnColor,
      //   backgroundColor: AppColors.primary,
      //   onPressed: () => onShare(item),
      // ),
      // TLSlidableButton(
      //   assetName: TlAssets.iconEdit,
      //   assetColor: AppColors.whiteOnColor,
      //   backgroundColor: AppColors.second,
      //   onPressed: () => onEdit(item),
      // ),
      // TLSlidableButton(
      //   assetName: TlAssets.iconTrash,
      //   assetColor: AppColors.second,
      //   backgroundColor: AppColors.whiteOnColor,
      //   onPressed: () => onRemove(item),
      // ),
    ];
  }

  void _handleShow(BuildContext context) {
    appNavigationService.goNamed(
      context,
      AppRoutes.profileBusinessCardsShow.name,
      pathParameters: {AppNavigationKeys.id: '${item.id}'},
    );
  }

  Future<void> _handleEdit(BuildContext context) async {
    await appNavigationService.pushNamed(
      context,
      AppRoutes.profileBusinessCardsEdit.name,
      pathParameters: {AppNavigationKeys.id: '${item.id}'},
    );

    if (context.mounted) {
      context.bloc<BusinessCardsListCubit>().refresh();
    }
  }

  void _handleShowDialogRemove(BuildContext context) {
    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: S.current.businessCardsDialogRemove,
        onConfirm: () {
          context.bloc<BusinessCardsListCubit>().remove(item.id);
          Navigator.pop(context);
        },
        confirmTitle: S.current.btnRemove,
      ),
    );
  }
}
