part of '../holidays_screen.dart';

class _Content extends StatelessWidget {
  final HolidaysCardData data;

  _Content({
    required this.data,
  });

  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;
    final bloc = context.bloc<HolidaysCardCubit>();

    return Scaffold(
      appBar: TlAppBar(
        title: S.current.titleHolidays,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: TlSpaces.p24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TlTextField(
                      label: S.current.holidaysSubject,
                      text: data.subject,
                      textInputAction: TextInputAction.next,
                      hint: S.current.holidaysSubjectHint,
                      onChanged: bloc.changeTheme,
                    ),
                    TlTextField(
                      label: S.current.holidaysAppeal,
                      text: data.appeal,
                      padding: TlSpaces.pt8,
                      textInputAction: TextInputAction.next,
                      hint: S.current.requiredToFill,
                      onChanged: bloc.changeAppeal,
                    ),
                    Padding(
                      padding: TlSpaces.pv16,
                      child: Text(
                        S.current.holidaysPreview,
                        style: appFontSemi(14, theme?.textContrast),
                      ),
                    ),
                    _ContentPreview(globalKey: _globalKey, data: data),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton:
          data.appeal.isNotEmpty ? _ContentBottomButtons(globalKey: _globalKey) : null,
    );
  }
}
