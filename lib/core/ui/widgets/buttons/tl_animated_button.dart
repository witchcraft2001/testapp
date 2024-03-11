// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/generated/l10n.dart';

const _timerTickDuration = Duration(seconds: 1);
const _limit = 1;

class TlAnimatedButton extends StatefulWidget {
  final String title;
  final AppBtnType type;
  final AppBtnFormat format;
  final VoidCallback? onPressed;
  final bool Function()? onValidate;
  final int duration;
  final double width;
  final bool isEnabled;

  const TlAnimatedButton({
    super.key,
    required this.title,
    required this.width,
    this.duration = 2,
    this.type = AppBtnType.primary,
    this.format = AppBtnFormat.base,
    this.onPressed,
    this.onValidate,
    this.isEnabled = true,
  });

  @override
  State<TlAnimatedButton> createState() => _TlAnimatedButtonAnimationState();
}

class _TlAnimatedButtonAnimationState extends State<TlAnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _curve;
  late Animation<double> _animation;
  late int _timerValue;

  Color? _color;
  Color? _foregroundColor;
  String? _cancelTitle;
  Timer? _timer;

  final _correction = TlDecoration.brBtnBaseValue * 2;

  @override
  void initState() {
    super.initState();

    _timerValue = widget.duration;

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.duration),
    );

    _curve = CurvedAnimation(parent: _animationController, curve: Curves.easeInOutCubic);

    _animation = Tween(
      begin: _correction,
      end: widget.width - _correction,
    ).animate(_curve)
      ..addListener(() => setState(() {}));

    _animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        widget.onPressed?.call();
        _handleReset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return InkWell(
      borderRadius: TlDecoration.brBtnBase,
      onTap: _handleTap,
      child: Container(
        height: TlSizes.btnBaseSize,
        decoration: BoxDecoration(
          color: widget.isEnabled
              ? _color ?? getButtonColorByType(colors: colors, type: widget.type)
              : Colors.transparent,
          borderRadius: TlDecoration.brBtnBase,
          border: widget.isEnabled ? null : Border.all(color: colors!.brAndIcons.withOpacity(0.3)),
        ),
        child: Stack(
          children: [
            Container(
              width: _animation.status == AnimationStatus.forward ? _animation.value : 0.0,
              height: TlSizes.btnBaseSize,
              decoration: BoxDecoration(
                borderRadius: TlDecoration.brBtnBase,
                color: colors?.danger.withOpacity(0.2),
              ),
            ),
            Center(
              child: Text(
                _cancelTitle != null
                    ? '$_cancelTitle ($_timerValue ${S.current.timerSeconds})'
                    : widget.title,
                style: getButtonTextStyleByFormat(
                  format: widget.format,
                  textColor: widget.isEnabled
                      ? _foregroundColor ?? colors?.whiteOnColor
                      : colors?.brAndIcons,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (_animationController.status == AnimationStatus.forward) {
      widget.onPressed?.call();
    }

    _animationController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _handleTap() {
    if (widget.isEnabled) {
      if (_animationController.status != AnimationStatus.forward) {
        _handleForward();
      } else if (_animationController.status == AnimationStatus.forward) {
        _handleReset();
      }
    }
  }

  void _handleForward() {
    final colors = context.appTheme?.colors;

    _animationController.forward();

    setState(() {
      _color = colors!.color4.withOpacity(0.5);
      _foregroundColor = colors.danger;
      _cancelTitle = S.current.btnCancel;
    });

    _timer = Timer.periodic(_timerTickDuration, (timer) {
      if (_timerValue >= _limit) {
        setState(() {
          _timerValue = widget.duration - timer.tick;
        });
      }
    });
  }

  void _handleReset() {
    _animationController.reset();
    _timer?.cancel();

    setState(() {
      _color = null;
      _foregroundColor = null;
      _cancelTitle = null;
      _timerValue = widget.duration;
    });
  }
}
