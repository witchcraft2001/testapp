// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/tl_divider.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/features/region/presentation/cubits/region_cubit.dart';
import 'package:terralinkapp/generated/l10n.dart';

class RegionScreen extends StatelessWidget {
  const RegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final text = context.appTheme?.text;

    return Scaffold(
      backgroundColor: context.appTheme?.colors.bgPopups,
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
                      style: text?.w700s20cMain,
                    ),
                    const SizedBox(height: TlSpaces.sp24),
                    Text(
                      S.current.regionSecond,
                      style: text?.w400s20cMain,
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
        style: context.appTheme?.text.w400s16cMain,
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
      color: context.appTheme?.colors.brAndIconsShapes,
      padding: TlSpaces.ph16,
    );
  }
}
