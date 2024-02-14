part of '../greeting_cards_screen.dart';

const _color = Color(0xFF191935);

class _ContentPreview extends StatelessWidget {
  final GlobalKey globalKey;
  final GreetingCardData data;

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
          color: _color,
          child: Column(
            children: [
              Stack(
                children: [
                  FadeInImage(
                    image: const AssetImage(TlAssets.imageGreetingCardNY2024),
                    placeholder: MemoryImage(kTransparentImage),
                  ),
                ],
              ),
              Container(color: theme?.primary, height: TlSpaces.sp4),
              Padding(
                padding: TlSpaces.ph16v24,
                child: Column(
                  children: [
                    Padding(
                      padding: TlSpaces.pv16,
                      child: Text(
                        data.appeal.isEmpty ? '<${S.current.greetingCardsAppeal}>' : data.appeal,
                        style: appFontSemi(20, theme?.whiteOnColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: TlSpaces.ph24v12,
                      child: Text(
                        'Команда ТерраЛинк поздравляет\nс Новым годом!',
                        style: appFontSemi(20, theme?.primary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: TlSpaces.ph24v12,
                      child: Text(
                        'Пусть 2024-й станет для Вас годом вдохновляющих открытий и ярких достижений!',
                        style: appFontRegular(17, theme?.whiteOnColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: TlSpaces.ph24v12,
                      child: Text(
                        'Счастья, здоровья и благополучия Вам и всем, кто Вам дорог!',
                        style: appFontRegular(17, theme?.whiteOnColor),
                        textAlign: TextAlign.center,
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

// class _ContentDescriptionRecord extends StatelessWidget {
//   final String first, second, third;

//   const _ContentDescriptionRecord({
//     required this.first,
//     required this.second,
//     required this.third,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = context.appTheme?.appTheme;

//     return Text.rich(
//       TextSpan(
//         children: [
//           TextSpan(
//             text: first,
//             style: appFontRegular(17, theme?.whiteOnColor),
//           ),
//           TextSpan(
//             text: second,
//             style: appFontSemi(17, _color),
//           ),
//           TextSpan(
//             text: third,
//             style: appFontRegular(17, theme?.whiteOnColor),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _ContentScheduleRecord extends StatelessWidget {
//   final String title, time;

//   const _ContentScheduleRecord({
//     required this.title,
//     required this.time,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = context.appTheme?.appTheme;

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(
//           width: 132,
//           child: Text(title, style: appFontRegular(17, theme?.whiteOnColor)),
//         ),
//         Text(time, style: appFontSemi(17, _color)),
//       ],
//     );
//   }
// }
