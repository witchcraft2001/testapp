part of '../settings_screen.dart';

class _ContentGroupRegion extends StatelessWidget {
  final AppUserRegion? userRegion;

  const _ContentGroupRegion({
    this.userRegion,
  });

  @override
  Widget build(BuildContext context) {
    return _ContentGroup(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContentItem(
            title: S.current.settingsRegion,
            trailing: _ContentGroupRegionButton(userRegion: userRegion),
          ),
        ],
      ),
    );
  }
}

class _ContentGroupRegionButton extends StatelessWidget {
  final AppUserRegion? userRegion;

  const _ContentGroupRegionButton({
    required this.userRegion,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: context.appTheme!.appTheme.backgroundPopupWidget,
          borderRadius: TlDecoration.brBase,
          items: _getRegions(context),
          padding: EdgeInsets.zero,
          onChanged: context.bloc<RegionCubit>().set,
          icon: Text(
            userRegion?.name ?? '',
            style: appFontSemiMedium(16, context.appTheme?.appTheme.primary),
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<AppUserRegion>> _getRegions(BuildContext context) {
    return appUserRegions.map<DropdownMenuItem<AppUserRegion>>(
      (region) {
        final index = AppUserRegion.values.indexOf(region);
        final isNotLast = index != appUserRegions.length - 1;

        return DropdownMenuItem(
          onTap: () => context.bloc<RegionCubit>().set(region),
          value: region,
          child: Container(
            decoration: BoxDecoration(
              border: isNotLast
                  ? Border(
                      bottom: BorderSide(
                        color: context.appTheme!.appTheme.bordersAndIconsStrokeShape,
                      ),
                    )
                  : null,
            ),
            margin: EdgeInsets.zero,
            padding: TlSpaces.pv8,
            child: Row(
              children: [
                TlSvg(assetName: region.flag),
                const SizedBox(width: TlSpaces.sp12),
                Text(
                  region.name,
                  style: appFontRegular(
                    16,
                    userRegion == region
                        ? context.appTheme?.appTheme.primary
                        : context.appTheme?.appTheme.textMain,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ).toList();
  }
}
