// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

Future<DateTime?> showSelectDateDialog(
  BuildContext context,
  DateTime? selectedDate,
) async {
  final ThemeData theme = Theme.of(context);
  switch (theme.platform) {
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      return _buildMaterialDatePicker(context, selectedDate);
    case TargetPlatform.iOS:
    case TargetPlatform.macOS:
      return _buildCupertinoDatePicker(context, selectedDate);
  }
}

/// This builds material date picker in Android
Future<DateTime?> _buildMaterialDatePicker(
  BuildContext context,
  DateTime? selectedDate,
) async {
  return await showDatePicker(
    context: context,
    initialDate: selectedDate ?? DateTime.now(),
    firstDate: DateTime(1),
    lastDate: DateTime.now().add(const Duration(days: 365 * 50)),
  );
}

/// This builds cupertino date picker in iOS
Future<DateTime?> _buildCupertinoDatePicker(BuildContext context, DateTime? selectedDate) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext builder) {
      DateTime tempPickedDate = selectedDate ?? DateTime.now();

      return Container(
        height: MediaQuery.of(context).copyWith().size.height / 3,
        color: context.appTheme?.appTheme.backgroundPopupWidget,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CupertinoButton(
                  child: Text(S.current.btnCancel),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoButton(
                  child: Text(S.of(context).btnDone),
                  onPressed: () {
                    Navigator.of(context).pop(tempPickedDate);
                  },
                ),
              ],
            ),
            const Divider(
              height: 0,
              thickness: 1,
            ),
            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: tempPickedDate,
                onDateTimeChanged: (picked) {
                  tempPickedDate = picked;
                },
                minimumYear: 1,
              ),
            ),
          ],
        ),
      );
    },
  );
}
