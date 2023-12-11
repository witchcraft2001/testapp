part of '../holidays_screen.dart';

const _color = Color(0xFFFFDB94);

class _ContentPreview extends StatelessWidget {
  final GlobalKey globalKey;
  final HolidaysCardData data;

  const _ContentPreview({
    required this.data,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return RepaintBoundary(
      key: globalKey,
      child: ClipRRect(
        borderRadius: TlDecoration.brBase,
        child: Container(
          color: AppDarkColors.backgroundPopupWidget,
          child: Column(
            children: [
              Stack(
                children: [
                  FadeInImage(
                    image: const AssetImage(TlAssets.imageHolidaysCorporateEvent),
                    placeholder: MemoryImage(kTransparentImage),
                  ),
                  Positioned(
                    top: TlSpaces.sp24,
                    right: TlSpaces.sp24,
                    child: TlSvg(
                      color: theme?.whiteOnColor,
                      assetName: TlAssets.imageTlLogoRu,
                    ),
                  ),
                ],
              ),
              Container(color: _color, height: TlSpaces.sp4),
              Padding(
                padding: TlSpaces.ph16v24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: TlSpaces.pb24,
                      child: Text(
                        data.appeal.isEmpty ? '<${S.current.holidaysAppeal}>' : data.appeal,
                        style: appFontSemi(20, theme?.whiteOnColor),
                      ),
                    ),
                    const _ContentDescriptionRecord(
                      first: 'Рады пригласить Вас на волшебное ',
                      second: 'новогоднее мероприятие ТерраЛинк',
                      third: ', полное чудес, невероятных открытий и вдохновляющих предсказаний.',
                    ),
                    const Padding(
                      padding: TlSpaces.pv24,
                      child: _ContentDescriptionRecord(
                        first: 'Встречаемся ',
                        second: '22 декабря ',
                        third: 'по адресу  Варшавское шоссе 33 стр. 3 в лофтах URBAN и BIBLIOTEKA.',
                      ),
                    ),
                    const _ContentScheduleRecord(title: 'Сбор гостей', time: '16:00'),
                    const _ContentScheduleRecord(title: 'Начало', time: '17:00'),
                    const _ContentScheduleRecord(title: 'Окончание', time: '00:00'),
                    Padding(
                      padding: TlSpaces.pv24,
                      child: Text(
                        'Дресс-код коктейльный, а если хотите в карнавальных костюмах в образе фей и добрых волшебников – будем только рады. До встречи!',
                        style: appFontLight(17, theme?.whiteOnColor, null, FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContentDescriptionRecord extends StatelessWidget {
  final String first, second, third;

  const _ContentDescriptionRecord({
    required this.first,
    required this.second,
    required this.third,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: first,
            style: appFontRegular(17, theme?.whiteOnColor),
          ),
          TextSpan(
            text: second,
            style: appFontSemi(17, _color),
          ),
          TextSpan(
            text: third,
            style: appFontRegular(17, theme?.whiteOnColor),
          ),
        ],
      ),
    );
  }
}

class _ContentScheduleRecord extends StatelessWidget {
  final String title, time;

  const _ContentScheduleRecord({
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 132,
          child: Text(title, style: appFontRegular(17, theme?.whiteOnColor)),
        ),
        Text(time, style: appFontSemi(17, _color)),
      ],
    );
  }
}
