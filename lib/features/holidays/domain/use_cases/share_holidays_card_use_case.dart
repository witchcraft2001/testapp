// Package imports:
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

// Project imports:
import 'package:terralinkapp/features/holidays/presentation/cubits/holidays_card_data.dart';

abstract class ShareHolidaysCardUseCase {
  Future<void> run(String attachmentPath, HolidaysCardData data);
}

@LazySingleton(
  as: ShareHolidaysCardUseCase,
  env: [Environment.dev, Environment.prod],
)
class ShareAppDocumentsUseCaseImpl extends ShareHolidaysCardUseCase {
  ShareAppDocumentsUseCaseImpl();

  @override
  Future<void> run(String attachmentPath, HolidaysCardData data) async {
    final xfile = XFile(attachmentPath);

    await Share.shareXFiles(
      [xfile],
      subject: data.subject,
      text: data.address,
    );
  }
}
