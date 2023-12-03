// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';

class TlCheckbox extends StatefulWidget {
  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  const TlCheckbox({
    super.key,
    required this.text,
    required this.value,
    required this.onChanged,
  });

  @override
  State<TlCheckbox> createState() => _TlCheckboxState();
}

class _TlCheckboxState extends State<TlCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    final color = switch (_value) { true => AppColors.accent, _ => AppColors.textMain };

    return InkWell(
      customBorder: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.divider, width: 0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      onTap: () {
        setState(() {
          _value = !_value;
          widget.onChanged(_value);
        });
      },
      child: Container(
        constraints: const BoxConstraints(minHeight: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 16.0,
                width: 16.0,
                child: SvgPicture.asset(switch (_value) {
                  true => TlAssets.iconCheckboxChecked,
                  _ => TlAssets.iconCheckbox
                }),
              ),
            ),
            const SizedBox(width: 16.0),
            Flexible(
              child: Text(
                widget.text,
                softWrap: true,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: color, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
