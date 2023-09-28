// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/select_date.dart';

class FormDateField extends StatefulWidget {
  final String title;
  final String? subtitle;
  final ValueChanged<DateTime> onChanged;

  const FormDateField({
    super.key,
    required this.title,
    required this.onChanged,
    this.subtitle,
  });

  @override
  State<FormDateField> createState() => _FormDateFieldState();
}

class _FormDateFieldState extends State<FormDateField> {
  DateTime? _value;

  @override
  Widget build(BuildContext context) {
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
        GestureDetector(
          onTap: () async {
            final result = await showSelectDateDialog(context, _value ?? DateTime.now());
            if (result != null) {
              setState(() {
                _value = result;
                widget.onChanged(result);
              });
            }
          },
          child: Container(
            width: double.infinity,
            height: 48.0,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _value == null ? '' : _value.toDateString(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: context.appTheme?.appTheme.textMain,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  SvgPicture.asset(TlAssets.iconCalendar),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: TlSpaces.sp12),
      ],
    );
  }
}
