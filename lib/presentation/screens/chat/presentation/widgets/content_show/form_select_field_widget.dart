// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/domain/form_message.dart';
import 'package:terralinkapp/domain/select_field_item_message.dart';
import 'package:terralinkapp/domain/select_form_field_message.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class FormSelectFieldWidget extends StatefulWidget {
  final FormMessage form;
  final String id;
  final String title;
  final String? subtitle;
  final SelectFormFieldMessage item;
  final ValueChanged<SelectFieldItemMessage> onChanged;

  const FormSelectFieldWidget({
    super.key,
    required this.form,
    required this.id,
    required this.title,
    this.subtitle,
    required this.item,
    required this.onChanged,
  });

  @override
  State<FormSelectFieldWidget> createState() => _FormSelectFieldWidgetState();
}

class _FormSelectFieldWidgetState extends State<FormSelectFieldWidget> {
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
        const SizedBox(
          height: 4.0,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.appTheme?.appTheme.specialColorWhiteBackground,
            border: Border.all(
              color: context.appTheme?.appTheme.bordersAndIconsStrokeShape ??
                  AppColors.bordersAndIconsWidgetStrokes,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(11),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: DropdownButton<SelectFieldItemMessage>(
              isExpanded: true,
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
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
        const SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
