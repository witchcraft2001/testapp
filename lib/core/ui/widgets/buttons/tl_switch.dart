// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';

class TlSwitch extends StatefulWidget {
  final bool value;
  final bool enabled;
  final Function(bool) onChanged;
  final Widget? iconOff, iconOn;

  const TlSwitch({
    super.key,
    required this.onChanged,
    this.value = false,
    this.enabled = true,
    this.iconOff,
    this.iconOn,
  });

  @override
  State<TlSwitch> createState() => _TlSwitchState();
}

class _TlSwitchState extends State<TlSwitch> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late bool _turnState;

  double value = 0.0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1.0,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animationController.addListener(() {
      setState(() {
        value = _animation.value;
      });
    });

    _turnState = widget.value;
    if (_turnState) {
      _animationController.value = double.infinity;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.enabled
        ? _getSwitch(context)
        : Opacity(
            opacity: 0.5,
            child: _getSwitch(context),
          );
  }

  Widget _getSwitch(BuildContext context) {
    //Color transition animation
    final colorOff = context.appTheme?.appTheme.bordersAndIconsIcons;
    final colorOn = context.appTheme?.appTheme.primary;
    Color? transitionColor = Color.lerp(colorOff, colorOn, value);

    const width = TlSizes.switchWidth;
    const thumbSize = TlSizes.switchThumbSize;
    const thumbPadding = TlSizes.switchThumbPadding;

    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        padding: const EdgeInsets.all(thumbPadding),
        width: width,
        decoration: BoxDecoration(
          color: transitionColor,
          borderRadius: BorderRadius.circular(thumbSize),
        ),
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: isRTL(context) ? Offset(-10 * value, 0) : Offset(10 * value, 0), //original
              child: Opacity(
                opacity: (1 - value).clamp(0.0, 1.0),
                child: Container(
                  padding: isRTL(context)
                      ? const EdgeInsets.only(left: thumbPadding * 3)
                      : const EdgeInsets.only(right: thumbPadding * 3),
                  alignment: isRTL(context) ? Alignment.centerLeft : Alignment.centerRight,
                  height: thumbSize,
                  child: widget.iconOff,
                ),
              ),
            ),
            Transform.translate(
              offset: isRTL(context)
                  ? Offset(-10 * (1 - value), 0)
                  : Offset(10 * (1 - value), 0), //original
              child: Opacity(
                opacity: value.clamp(0.0, 1.0),
                child: Container(
                  padding: isRTL(context)
                      ? const EdgeInsets.only(right: thumbPadding * 3)
                      : const EdgeInsets.only(left: thumbPadding * 3),
                  alignment: isRTL(context) ? Alignment.centerRight : Alignment.centerLeft,
                  height: thumbSize,
                  child: widget.iconOn,
                ),
              ),
            ),
            Transform.translate(
              offset: isRTL(context)
                  ? Offset(-(width - thumbSize - (thumbPadding * 2)) * value, 0)
                  : Offset((width - thumbSize - (thumbPadding * 2)) * value, 0),
              child: Transform.rotate(
                angle: 0,
                child: Container(
                  height: thumbSize,
                  width: thumbSize,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  _handleTap() {
    if (widget.enabled) {
      setState(() {
        _turnState = !_turnState;

        (_turnState) ? _animationController.forward() : _animationController.reverse();
      });

      widget.onChanged(_turnState);
    }
  }
}

bool isRTL(BuildContext context) {
  return Bidi.isRtlLanguage(Localizations.localeOf(context).languageCode);
}
