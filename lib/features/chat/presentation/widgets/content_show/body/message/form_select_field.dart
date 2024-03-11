// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/iterable_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/features/chat/domain/entities/select_field_item_message.dart';
import 'package:terralinkapp/features/chat/domain/entities/select_form_field_message.dart';

class FormSelectField extends StatefulWidget {
  final String title;
  final String? subtitle;
  final SelectFormFieldMessage item;
  final ValueChanged<SelectFieldItemMessage> onChanged;

  const FormSelectField({
    super.key,
    required this.title,
    required this.item,
    required this.onChanged,
    this.subtitle,
  });

  @override
  State<FormSelectField> createState() => _FormSelectFieldState();
}

class _FormSelectFieldState extends State<FormSelectField> {
  late SelectFieldItemMessage _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.item.selectItems.firstWhereOrNull((element) => element.selected) ??
        widget.item.selectItems.first;
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.item.selectItems
        .map<DropdownMenuItem<SelectFieldItemMessage>>(
          (e) => DropdownMenuItem<SelectFieldItemMessage>(
            value: e,
            child: Text(
              e.title,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
        .toList();

    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: text?.w400s14cSignatures,
        ),
        widget.subtitle != null
            ? Text(
                widget.subtitle!,
                style: text?.w400s12cOptional,
              )
            : Container(),
        const SizedBox(height: TlSpaces.sp4),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: colors?.bgWhite,
            border: Border.all(
              color: colors?.brAndIconsShapes ?? appColorsThemeLight.brAndIconsStrokes,
              width: 1.5,
            ),
            borderRadius: TlDecoration.brBase,
          ),
          child: Padding(
            padding: TlSpaces.ph12,
            child: DropdownButton<SelectFieldItemMessage>(
              isExpanded: true,
              icon: Padding(
                padding: TlSpaces.p8,
                child: SvgPicture.asset(TlAssets.iconArrowDown),
              ),
              underline: Container(),
              style: text?.w400s16cMain,
              value: _selected,
              items: items,
              onChanged: (value) {
                setState(() {
                  if (value != null && value != _selected) {
                    _selected = value;
                    widget.onChanged(value);
                  }
                });
              },
            ),
          ),
        ),
        const SizedBox(height: TlSpaces.sp12),
      ],
    );
  }
}
