part of '../greeting_cards_screen.dart';

class _ContentBody extends StatelessWidget {
  final GlobalKey globalKey;
  final GreetingCardData data;

  const _ContentBody({
    required this.data,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;
    final bloc = context.bloc<GreetingCardCubit>();

    // ToDo задел на реализации бэка, когда список открыток будет пуст
    // if (isEmpty) {
    //   return TlEmptyData(
    //     asset: TlAssets.imageNoGreetingCards,
    //     message: S.current.greetingCardsEmptyList,
    //     buttonTitle: S.current.btnRefresh,
    //     onRefresh: () async => {},
    //     onPressed: () {},
    //   );
    // }

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: TlSpaces.p24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TlTextField(
                    label: S.current.greetingCardsSubject,
                    text: data.subject,
                    textInputAction: TextInputAction.next,
                    hint: S.current.greetingCardsSubjectHint,
                    onChanged: bloc.changeTheme,
                  ),
                  TlTextField(
                    label: S.current.greetingCardsAppeal,
                    text: data.appeal,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.validationRequired,
                    onChanged: bloc.changeAppeal,
                  ),
                  Padding(
                    padding: TlSpaces.pv16,
                    child: Text(
                      S.current.greetingCardsPreview,
                      style: appFontSemi(14, theme?.textContrast),
                    ),
                  ),
                  _ContentPreview(globalKey: globalKey, data: data),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
