// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/profile_documents/domain/states/profile_documents_state.dart';

part 'profile_documents_screen_state.freezed.dart';

@freezed
class ProfileDocumentsScreenState with _$ProfileDocumentsScreenState {
  const factory ProfileDocumentsScreenState.loading() = ProfileDocumentsScreenStateLoading;

  const factory ProfileDocumentsScreenState.loaded(ProfileDocumentsState data) =
      ProfileDocumentsScreenStateLoaded;
}
