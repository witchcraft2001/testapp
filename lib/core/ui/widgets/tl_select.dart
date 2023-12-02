// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'tl_label.dart';

class TlSelect<T> extends StatefulWidget {
  final String title;
  final List<T> items;
  final T? selected;
  final ValueChanged<T?> onChanged;

  const TlSelect({
    super.key,
    required this.title,
    required this.items,
    this.selected,
    required this.onChanged,
  });

  @override
  State<TlSelect<T>> createState() => _TlSelectState<T>();
}

class _TlSelectState<T> extends State<TlSelect<T>> {
  late T _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected ?? widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.items
        .map((e) => DropdownMenuItem<T>(
              value: e,
              child: Text(
                e.toString(),
                overflow: TextOverflow.ellipsis,
              ),
            ))
        .toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TlLabel(
          text: widget.title,
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
            borderRadius: TlDecoration.brBase,
          ),
          child: Padding(
            padding: TlSpaces.ph16,
            child: DropdownButton<T>(
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
      ],
    );
  }
}
