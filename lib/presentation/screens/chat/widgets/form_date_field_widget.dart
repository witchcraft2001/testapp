// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/domain/form_message.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/select_date.dart';

class FormDateFieldWidget extends StatefulWidget {
  final FormMessage form;
  final String id;
  final String title;
  final String? subtitle;
  final ValueChanged<DateTime> onChanged;

  const FormDateFieldWidget({super.key, required this.form, required this.id, required this.title, this.subtitle, required this.onChanged});

  @override
  State<FormDateFieldWidget> createState() => _FormDateFieldWidgetState();
}

class _FormDateFieldWidgetState extends State<FormDateFieldWidget> {
  DateTime? _value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: ThemeProvider.labelLarge.copyWith(color: context.appTheme?.appTheme.textSignatures),
        ),
        widget.subtitle != null
            ? Text(
          widget.subtitle!,
          style: ThemeProvider.labelSmall.copyWith(color: context.appTheme?.appTheme.textOptional),
        )
            : Container(),
        const SizedBox(height: 4.0,),
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
              border: Border.all(color: context.appTheme?.appTheme.bordersAndIconsStrokeShape ?? AppColors.bordersAndIconsWidgetStrokes, width: 1.5),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _value == null ? '' : _value.toDateString(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: context.appTheme?.appTheme.textMain, fontWeight: FontWeight.normal),
                  ),
                  SvgPicture.asset('assets/images/ic_calendar_16.svg'),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 12.0,),
      ],
    );
  }
}
