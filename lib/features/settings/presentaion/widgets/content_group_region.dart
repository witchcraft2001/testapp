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
          dropdownColor: context.appTheme!.colors.bgPopups,
          borderRadius: TlDecoration.brBase,
          items: _getRegions(context),
          padding: EdgeInsets.zero,
          onChanged: context.bloc<RegionCubit>().set,
          icon: Text(
            userRegion?.name ?? '',
            style: context.appTheme?.text.w500s16cPrimary,
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<AppUserRegion>> _getRegions(BuildContext context) {
    final text = context.appTheme?.text;

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
                        color: context.appTheme!.colors.brAndIconsShapes,
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
                  style: userRegion == region ? text?.w400s16cPrimary : text?.w400s16cMain,
                ),
              ],
            ),
          ),
        );
      },
    ).toList();
  }
}
