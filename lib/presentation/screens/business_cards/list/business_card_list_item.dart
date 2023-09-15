// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/domain/business_card_locale.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_svg_icon_button.dart';
import 'package:terralinkapp/presentation/widgets/tag.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';

class BusinessCardListItem extends StatelessWidget {
  final BusinessCard item;
  final ValueChanged<BusinessCard>? onShow;
  final ValueChanged<BusinessCard> onEdit;
  final ValueChanged<BusinessCard> onRemove;

  const BusinessCardListItem({
    super.key,
    required this.item,
    required this.onEdit,
    required this.onRemove,
    this.onShow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.pb8,
      child: TlCard(
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () => onShow?.call(item),
          child: Padding(
            padding: TlSpaces.ph16v12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.position,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: ThemeProvider.bodyMedium.copyWith(
                          color: context.appTheme?.appTheme.textMain,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Tag(
                        text: item.locale.value,
                        padding: TlSpaces.pt8,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    TlSvgIconButton(
                      assetName: TlAssets.iconSettingsThin,
                      onPressed: () => onEdit(item),
                    ),
                    TlSvgIconButton(
                      assetName: TlAssets.iconTrash,
                      onPressed: () => onRemove(item),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
