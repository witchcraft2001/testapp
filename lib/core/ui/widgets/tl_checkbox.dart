// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
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
    final colors = context.appTheme?.colors;

    final color = switch (_value) { true => colors?.accent, _ => colors?.textMain };

    return InkWell(
      customBorder: RoundedRectangleBorder(
        side: BorderSide(
          color: colors!.brAndIconsStrokes,
          width: 0,
        ), // ToDo как-будто что-то не так тут
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
                style: context.appTheme?.text.w400s16cMain.copyWith(color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
