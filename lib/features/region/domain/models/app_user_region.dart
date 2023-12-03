// Project imports:
import 'package:terralinkapp/core/ui/common/tl_assets.dart';

enum AppUserRegion {
  ru('RU', 'ru', TlAssets.flagRU),
  kz('KZ', 'kz', TlAssets.flagKZ),
  uz('UZ', 'uzb', TlAssets.flagUZ);

  final String name;
  final String value;
  final String flag;

  const AppUserRegion(this.name, this.value, this.flag);
}

const appUserRegions = AppUserRegion.values;

const appUserRegionAllValue = 'all';
