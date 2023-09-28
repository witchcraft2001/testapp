// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/domain/select_field_item_message.dart';
import 'package:terralinkapp/domain/select_form_field_message.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style:
              ThemeProvider.labelLarge.copyWith(color: context.appTheme?.appTheme.textSignatures),
        ),
        widget.subtitle != null
            ? Text(
                widget.subtitle!,
                style: ThemeProvider.labelSmall
                    .copyWith(color: context.appTheme?.appTheme.textOptional),
              )
            : Container(),
        const SizedBox(height: TlSpaces.sp4),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.appTheme?.appTheme.specialColorWhiteBackground,
            border: Border.all(
              color: context.appTheme?.appTheme.bordersAndIconsStrokeShape ??
                  AppColors.bordersAndIconsWidgetStrokes,
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
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: context.appTheme?.appTheme.textMain,
                    fontWeight: FontWeight.normal,
                  ),
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
