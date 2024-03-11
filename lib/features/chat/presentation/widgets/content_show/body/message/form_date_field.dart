// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/select_date.dart';

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
              color: colors?.bgWhite,
              border: Border.all(
                color: colors?.brAndIconsShapes ?? appColorsThemeLight.brAndIconsStrokes,
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
                    style: text?.w400s16cMain,
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
