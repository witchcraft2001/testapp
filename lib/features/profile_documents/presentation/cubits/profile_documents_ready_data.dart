// Project imports:
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

class ProfileDocumentsReadyData {
  final List<AppDocument> documents;
  final List<AppDocument> selects;

  const ProfileDocumentsReadyData({
    this.documents = const [],
    this.selects = const [],
  });

  ProfileDocumentsReadyData copyWith({
    List<AppDocument>? documents,
    List<AppDocument>? selects,
  }) =>
      ProfileDocumentsReadyData(
        documents: documents ?? this.documents,
        selects: selects ?? this.selects,
      );
}
