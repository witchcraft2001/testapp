// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

part 'profile_documents_cubit_state.freezed.dart';

@freezed
class ProfileDocumentsCubitState with _$ProfileDocumentsCubitState {
  const factory ProfileDocumentsCubitState.loading() = _ProfileDocumentsCubitStateLoading;

  const factory ProfileDocumentsCubitState.ready(ProfileDocumentsState data) =
      _ProfileDocumentsCubitStateReady;
}

class ProfileDocumentsState {
  final List<AppDocument> documents;
  final List<AppDocument> selects;

  const ProfileDocumentsState({
    this.documents = const [],
    this.selects = const [],
  });

  ProfileDocumentsState copyWith({
    List<AppDocument>? documents,
    List<AppDocument>? selects,
  }) =>
      ProfileDocumentsState(
        documents: documents ?? this.documents,
        selects: selects ?? this.selects,
      );
}
