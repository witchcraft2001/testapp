part of '../settings_screen.dart';

class _ContentItem extends StatelessWidget {
  final String title;
  final Widget? subtitle, trailing;
  final _ContentItemTrailingProps? trailingProps;
  final VoidCallback? onTap;

  const _ContentItem({
    required this.title,
    this.subtitle,
    this.trailing,
    this.trailingProps,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TlCard(
      elevation: 0,
      child: ListTile(
        contentPadding: TlSpaces.ph12,
        shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
        onTap: onTap,
        title: Padding(
          padding: TlSpaces.pv8,
          child: Text(
            title,
            style: context.appTheme?.text.w500s16cMain,
          ),
        ),
        trailing: trailing ?? _ContentItemTrailing(trailingProps: trailingProps),
        subtitle: subtitle,
      ),
    );
  }
}

class _ContentItemTrailing extends StatelessWidget {
  final _ContentItemTrailingProps? trailingProps;

  const _ContentItemTrailing({
    this.trailingProps,
  });

  @override
  Widget build(BuildContext context) {
    if (trailingProps != null) {
      return TlSwitch(
        value: trailingProps!.value,
        iconOff: trailingProps!.iconOff,
        iconOn: trailingProps!.iconOn,
        enabled: trailingProps!.enabled,
        onChanged: trailingProps!.onChange,
      );
    }

    return const TlSvg(assetName: TlAssets.iconArrowRight);
  }
}

class _ContentItemTrailingProps {
  final bool value;
  final bool enabled;
  final Widget? iconOn, iconOff;
  final Function(bool) onChange;

  _ContentItemTrailingProps({
    required this.value,
    required this.onChange,
    this.enabled = true,
    this.iconOn,
    this.iconOff,
  });
}
