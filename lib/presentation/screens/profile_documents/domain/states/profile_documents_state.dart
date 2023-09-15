// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';

part 'profile_documents_state.freezed.dart';

@freezed
class ProfileDocumentsState with _$ProfileDocumentsState {
  const factory ProfileDocumentsState({
    @Default(<AppDocument>[]) List<AppDocument> documents,
    @Default(<AppDocument>[]) List<AppDocument> selects,
  }) = _ProfileDocumentsState;
}
