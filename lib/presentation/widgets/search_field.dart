// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:async/async.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class SearchField extends StatefulWidget {
  final String text;
  final String hint;
  final void Function(String value) onChanged;
  final EdgeInsets? padding;

  const SearchField({
    super.key,
    required this.hint,
    required this.onChanged,
    required this.text,
    this.padding,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late CancelableOperation<void> cancellableOperation;
  final _delayTime = const Duration(milliseconds: 300);
  final TextEditingController controller = TextEditingController();
  bool isEmptyField = true;

  @override
  void initState() {
    super.initState();
    if (widget.text.isNotEmpty && controller.text != widget.text) {
      controller.text = widget.text;
      controller.selection =
          TextSelection(baseOffset: widget.text.length, extentOffset: widget.text.length);
    }
    _start();
    controller.addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          widget.padding ?? const EdgeInsets.only(left: 4.0, right: 4.0, top: 16.0, bottom: 0.0),
      child: TextField(
        style: ThemeProvider.bodyMedium.copyWith(
          fontWeight: AppFontWeight.regular,
          color: context.appTheme?.appTheme.textMain,
        ),
        controller: controller,
        decoration: InputDecoration(
          fillColor: context.appTheme?.appTheme.specialColorWhiteBackground,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.appTheme?.appTheme.bordersAndIconsStrokeShape ??
                  AppColors.bordersAndIconsStrokeShape,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(40.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.appTheme?.appTheme.bordersAndIconsStrokeShape ??
                  AppColors.bordersAndIconsStrokeShape,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(40.0)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.appTheme?.appTheme.danger ?? AppColors.danger),
            borderRadius: const BorderRadius.all(Radius.circular(40.0)),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: InkWell(
              onTap: () {
                if (controller.text.isNotEmpty) {
                  controller.text = '';
                  _onItemChanged('');
                }
              },
              child: isEmptyField
                  ? SvgPicture.asset(TlAssets.iconSearch)
                  : SvgPicture.asset(TlAssets.iconCross),
            ),
          ),
          hintStyle: ThemeProvider.bodyMedium.copyWith(
            fontWeight: AppFontWeight.regular,
            color: context.appTheme?.appTheme.textOptional,
          ),
          hintText: widget.hint,
        ),
        onChanged: _onItemChanged,
      ),
    );
  }

  @override
  void dispose() {
    controller.removeListener(listener);
    super.dispose();
  }

  void listener() {
    setState(() {
      isEmptyField = controller.text.isEmpty;
    });
  }

  void _start() {
    cancellableOperation = CancelableOperation.fromFuture(
      Future.delayed(_delayTime),
      onCancel: () {},
    );
  }

  void _onItemChanged(String value) {
    cancellableOperation.cancel();
    _start();
    cancellableOperation.value.whenComplete(() {
      widget.onChanged(value);
    });
  }
}
