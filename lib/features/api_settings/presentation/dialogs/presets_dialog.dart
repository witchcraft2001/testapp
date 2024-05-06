part of '../api_settings_screen.dart';

Future<ApiSettingsPreset?> _showPresetsDialog(
  BuildContext context,
  List<ApiSettingsPreset> items,
) {
  return showDialog(
    context: context,
    builder: (_) => _PresetsDialog(items: items),
  );
}

class _PresetsDialog extends StatelessWidget {
  final List<ApiSettingsPreset> items;

  const _PresetsDialog({required this.items});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: TlSpaces.ph40t40,
      title: Text(S.current.presets),
      contentPadding: TlSpaces.ph12v24,
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
                  onTap: () => Navigator.of(context).pop(items[index]),
                  title: Text(
                    items[index].name,
                    style: context.appTheme?.text.w400s16cMain,
                  ),
                  trailing: const TlSvg(
                    assetName: TlAssets.iconArrowRight,
                    size: TlSizes.iconSizeS,
                  ),
                );
              },
              separatorBuilder: (_, __) => TlDivider(
                color: context.appTheme?.colors.brAndIconsShapes,
                padding: TlSpaces.ph16,
              ),
            ),
            TlButton(
              withOverflow: true,
              padding: TlSpaces.ph12t12,
              title: S.current.btnCancel,
              style: AppBtnStyle.none,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
