part of '../expandable_panel.dart';

class ExpandableParams {
  /// Параметры анимации между свернутым/развернутым состояниями
  /// выравнивание виджетов, пока длится [animationDuration]
  final AlignmentGeometry? alignment;
  final Duration? animationDuration;
  final Curve? fadeCurve;
  final Curve? sizeCurve;

  /// Точка на временной шкале плавного затухания анимации (от 0 до 1),
  /// где [collapsed] и [expanded] наполовину видимы.
  ///
  /// 1) Если установлено значение 0, [expanded] будет сразу показан в полной непрозрачности,
  /// когда начинается переход размера. Это полезно, если [collapsed]
  /// пуст или если речь идет о тексте, который частично отображается в свернутом состоянии.
  ///
  /// 2) Если установлено значение 0,5, будут показаны [expanded] и [collapsed]
  /// на половине непрозрачности в середине анимации размера с помощью
  /// эффект плавного затухания на протяжении всего перехода размера.
  /// Это значение по умолчанию.
  ///
  /// 3) Если установлено значение 1, [expanded] виджет будет отображаться в самом конце анимации размера.
  ///
  /// При сворачивании эффект этого параметра меняется на обратный. Например, если значение равно 0
  /// тогда [expanded] виджет будет отображаться до конца анимации размера.
  final double? crossFadePoint;

  /// Параметры для выравнивания header и body [ExpandablePanel]
  final ExpandablePanelHeaderAlignment? headerAlignment;
  final ExpandablePanelBodyAlignment? bodyAlignment;

  /// Признаки, обеспечивающие свертывание/развертывание [ExpandablePanel]
  final bool? isTapHeaderToExpand;
  final bool? isTapBodyToExpand;
  final bool? isTapBodyToCollapse;

  /// Параметры иконок, если [hasIcon] = true (признак отображения иконки в header [ExpandablePanel])
  final bool? hasIcon;
  final IconData? expandIcon;
  final IconData? collapseIcon;
  final ExpandablePanelIconPlacement? iconPlacement;
  final double? iconSize;
  final EdgeInsets? iconPadding;
  final double? iconRotationAngle;
  final Color? iconColor;

  /// Параметры [InkWell], если [isInkWell] = true, для ripple-эффекта в [header]
  final bool? isInkWell;
  final BorderRadius? inkWellBorderRadius;

  /// Длительность анимации скролла, когда [expanded] становится видимым
  final Duration? scrollAnimationDuration;

  const ExpandableParams({
    this.iconColor,
    this.isInkWell,
    this.animationDuration,
    this.scrollAnimationDuration,
    this.crossFadePoint,
    this.fadeCurve,
    this.sizeCurve,
    this.alignment,
    this.headerAlignment,
    this.bodyAlignment,
    this.iconPlacement,
    this.isTapHeaderToExpand,
    this.isTapBodyToExpand,
    this.isTapBodyToCollapse,
    this.hasIcon,
    this.iconSize,
    this.iconPadding,
    this.iconRotationAngle,
    this.expandIcon,
    this.collapseIcon,
    this.inkWellBorderRadius,
  });

  static const ExpandableParams defaults = ExpandableParams(
    iconColor: Colors.black54,
    isInkWell: true,
    inkWellBorderRadius: BorderRadius.zero,
    animationDuration: Duration(milliseconds: 300),
    scrollAnimationDuration: Duration(milliseconds: 300),
    crossFadePoint: 0.5,
    fadeCurve: Curves.linear,
    sizeCurve: Curves.fastOutSlowIn,
    alignment: Alignment.topLeft,
    headerAlignment: ExpandablePanelHeaderAlignment.top,
    bodyAlignment: ExpandablePanelBodyAlignment.left,
    iconPlacement: ExpandablePanelIconPlacement.end,
    isTapHeaderToExpand: true,
    isTapBodyToExpand: false,
    isTapBodyToCollapse: false,
    hasIcon: true,
    iconSize: 24.0,
    iconPadding: EdgeInsets.all(8.0),
    iconRotationAngle: -math.pi,
    expandIcon: Icons.expand_more,
    collapseIcon: Icons.expand_more,
  );

  static const ExpandableParams empty = ExpandableParams();

  static ExpandableParams combine(
    ExpandableParams? params,
    ExpandableParams? defaults,
  ) {
    if (defaults == null || defaults.isEmpty()) {
      return params ?? empty;
    }

    if (params == null || params.isEmpty()) {
      return defaults;
    }

    if (params.isFull()) {
      return params;
    }

    return ExpandableParams(
      iconColor: params.iconColor ?? defaults.iconColor,
      isInkWell: params.isInkWell ?? defaults.isInkWell,
      inkWellBorderRadius: params.inkWellBorderRadius ?? defaults.inkWellBorderRadius,
      animationDuration: params.animationDuration ?? defaults.animationDuration,
      scrollAnimationDuration: params.scrollAnimationDuration ?? defaults.scrollAnimationDuration,
      crossFadePoint: params.crossFadePoint ?? defaults.crossFadePoint,
      fadeCurve: params.fadeCurve ?? defaults.fadeCurve,
      sizeCurve: params.sizeCurve ?? defaults.sizeCurve,
      alignment: params.alignment ?? defaults.alignment,
      headerAlignment: params.headerAlignment ?? defaults.headerAlignment,
      bodyAlignment: params.bodyAlignment ?? defaults.bodyAlignment,
      iconPlacement: params.iconPlacement ?? defaults.iconPlacement,
      isTapHeaderToExpand: params.isTapHeaderToExpand ?? defaults.isTapHeaderToExpand,
      isTapBodyToExpand: params.isTapBodyToExpand ?? defaults.isTapBodyToExpand,
      isTapBodyToCollapse: params.isTapBodyToCollapse ?? defaults.isTapBodyToCollapse,
      hasIcon: params.hasIcon ?? defaults.hasIcon,
      iconSize: params.iconSize ?? defaults.iconSize,
      iconPadding: params.iconPadding ?? defaults.iconPadding,
      iconRotationAngle: params.iconRotationAngle ?? defaults.iconRotationAngle,
      expandIcon: params.expandIcon ?? defaults.expandIcon,
      collapseIcon: params.collapseIcon ?? defaults.collapseIcon,
    );
  }

  double get collapsedFadeStart => crossFadePoint! < 0.5 ? 0 : (crossFadePoint! * 2 - 1);

  double get collapsedFadeEnd => crossFadePoint! < 0.5 ? 2 * crossFadePoint! : 1;

  double get expandedFadeStart => crossFadePoint! < 0.5 ? 0 : (crossFadePoint! * 2 - 1);

  double get expandedFadeEnd => crossFadePoint! < 0.5 ? 2 * crossFadePoint! : 1;

  ExpandableParams? nullIfEmpty() {
    return isEmpty() ? null : this;
  }

  bool isEmpty() {
    return this == empty;
  }

  bool isFull() {
    return iconColor != null &&
        isInkWell != null &&
        inkWellBorderRadius != null &&
        animationDuration != null &&
        scrollAnimationDuration != null &&
        crossFadePoint != null &&
        fadeCurve != null &&
        sizeCurve != null &&
        alignment != null &&
        headerAlignment != null &&
        bodyAlignment != null &&
        iconPlacement != null &&
        isTapHeaderToExpand != null &&
        isTapBodyToExpand != null &&
        isTapBodyToCollapse != null &&
        hasIcon != null &&
        iconRotationAngle != null &&
        expandIcon != null &&
        collapseIcon != null;
  }

  @override
  // ignore: non_nullable_equals_parameter
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    } else if (other is ExpandableParams) {
      return iconColor == other.iconColor &&
          isInkWell == other.isInkWell &&
          inkWellBorderRadius == other.inkWellBorderRadius &&
          animationDuration == other.animationDuration &&
          scrollAnimationDuration == other.scrollAnimationDuration &&
          crossFadePoint == other.crossFadePoint &&
          fadeCurve == other.fadeCurve &&
          sizeCurve == other.sizeCurve &&
          alignment == other.alignment &&
          headerAlignment == other.headerAlignment &&
          bodyAlignment == other.bodyAlignment &&
          iconPlacement == other.iconPlacement &&
          isTapHeaderToExpand == other.isTapHeaderToExpand &&
          isTapBodyToExpand == other.isTapBodyToExpand &&
          isTapBodyToCollapse == other.isTapBodyToCollapse &&
          hasIcon == other.hasIcon &&
          iconRotationAngle == other.iconRotationAngle &&
          expandIcon == other.expandIcon &&
          collapseIcon == other.collapseIcon;
    } else {
      return false;
    }
  }

  @override
  int get hashCode {
    return 0; // неважно
  }

  static ExpandableParams of(BuildContext context, {bool rebuildOnChange = true}) {
    final notifier = rebuildOnChange
        ? context.dependOnInheritedWidgetOfExactType<_ExpandableParamsNotifier>()
        : context.findAncestorWidgetOfExactType<_ExpandableParamsNotifier>();

    return notifier?.params ?? defaults;
  }

  static ExpandableParams withDefaults(
    ExpandableParams? params,
    BuildContext context, {
    bool rebuildOnChange = true,
  }) {
    if (params != null && params.isFull()) {
      return params;
    }

    return combine(
      combine(params, of(context, rebuildOnChange: rebuildOnChange)),
      defaults,
    );
  }
}
