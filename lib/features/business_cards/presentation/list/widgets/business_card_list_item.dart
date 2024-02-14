// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/tl_tag.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card_locale.dart';

class BusinessCardListItem extends StatelessWidget {
  final BusinessCard item;
  final ValueChanged<BusinessCard>? onShow;
  final ValueChanged<BusinessCard> onEdit;
  final ValueChanged<BusinessCard> onRemove;
  final ValueChanged<BusinessCard> onShare;

  const BusinessCardListItem({
    super.key,
    required this.item,
    required this.onEdit,
    required this.onRemove,
    this.onShow,
    required this.onShare,
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
        onTap: () => onShow?.call(item),
        child: Container(
          height: TlSizes.cardDocumentHeight,
          color: context.appTheme?.appTheme.specialColorMenu,
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
                    style: ThemeProvider.bodyMedium.copyWith(
                      color: context.appTheme?.appTheme.textMain,
                      fontWeight: FontWeight.w500,
                    ),
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
        onPressed: () => onShare(item),
        leading: SvgPicture.asset(TlAssets.iconShare),
        style: AppBtnStyle.leadingBase,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () => onEdit(item),
        leading: SvgPicture.asset(TlAssets.iconEdit),
        type: AppBtnType.secondary,
        style: AppBtnStyle.leadingBase,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.cardDocumentHeight,
        onPressed: () => onRemove(item),
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
}
