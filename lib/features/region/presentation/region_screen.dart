// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/tl_divider.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/region/domain/cubits/region_cubit.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/generated/l10n.dart';

class RegionScreen extends StatelessWidget {
  const RegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme?.appTheme.backgroundPopupWidget,
      body: SafeArea(
        child: Padding(
          padding: TlSpaces.ph32,
          child: Column(
            children: [
              Padding(
                padding: TlSpaces.ph16v56,
                child: Column(
                  children: [
                    Text(
                      S.current.regionFirst,
                      style: appFontSemi(20, context.appTheme?.appTheme.textMain),
                    ),
                    const SizedBox(height: TlSpaces.sp24),
                    Text(
                      S.current.regionSecond,
                      style: appFontRegular(20, context.appTheme?.appTheme.textMain),
                    ),
                  ],
                ),
              ),
              _Divider(),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (_, __) => _Divider(),
                itemCount: appUserRegions.length,
                itemBuilder: (_, index) => _RegionItem(region: appUserRegions[index]),
              ),
              _Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegionItem extends StatelessWidget {
  final AppUserRegion region;

  const _RegionItem({
    required this.region,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: TlSpaces.ph16v8,
      shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
      onTap: () async {
        await context.bloc<RegionCubit>().set(region);

        if (context.mounted) {
          appNavigationService.goNamed(context, AppRoutes.news.name);
        }
      },
      leading: TlSvg(assetName: region.flag),
      title: Text(
        region.name,
        style: appFontRegular(16, context.appTheme?.appTheme.textMain),
      ),
      trailing: const TlSvg(
        assetName: TlAssets.iconArrowRight,
        size: TlSizes.iconSizeS,
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TlDivider(
      color: context.appTheme?.appTheme.bordersAndIconsStrokeShape,
      padding: TlSpaces.ph16,
    );
  }
}
