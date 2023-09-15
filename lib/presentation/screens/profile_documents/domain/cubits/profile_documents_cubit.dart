// Dart imports:
import 'dart:io';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file_plus/open_file_plus.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/data/use_cases/documents/add_app_documents_use_case.dart';
import 'package:terralinkapp/data/use_cases/documents/edit_app_documents_use_case.dart';
import 'package:terralinkapp/data/use_cases/documents/get_app_documents_use_case.dart';
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart';
import 'package:terralinkapp/data/use_cases/documents/open_app_document_use_case.dart';
import 'package:terralinkapp/data/use_cases/documents/remove_case_app_documents_use_case.dart';
import 'package:terralinkapp/data/use_cases/documents/share_app_documents_use_case.dart';
import 'package:terralinkapp/presentation/screens/profile_documents/domain/states/profile_documents_screen_state.dart';
import 'package:terralinkapp/presentation/screens/profile_documents/domain/states/profile_documents_state.dart';

@injectable
class ProfileDocumentsCubit extends Cubit<ProfileDocumentsScreenState> {
  final InitAppDocumentsUseCase _initAppDocumentsUseCase;
  final GetAppDocumentsUseCase _getAppDocumentsUseCase;
  final AddAppDocumentsUseCase _addAppDocumentsUseCase;
  final RemoveAppDocumentUseCase _removeAppDocumentUseCase;
  final EditAppDocumentUseCase _editAppDocumentUseCase;
  final ShareAppDocumentsUseCase _shareAppDocumentsUseCase;
  final OpenAppDocumentUseCase _openAppDocumentUseCase;

  ProfileDocumentsCubit(
    this._initAppDocumentsUseCase,
    this._getAppDocumentsUseCase,
    this._addAppDocumentsUseCase,
    this._removeAppDocumentUseCase,
    this._editAppDocumentUseCase,
    this._shareAppDocumentsUseCase,
    this._openAppDocumentUseCase,
  ) : super(const ProfileDocumentsScreenState.loading());

  late Directory _directory;
  ProfileDocumentsState _docsState = const ProfileDocumentsState();

  Future<void> init() async {
    _directory = await _initAppDocumentsUseCase.run();
  }

  Future<void> get([String? query]) async {
    emit(const ProfileDocumentsScreenState.loading());

    final documents = await _getAppDocumentsUseCase.run(query);
    _docsState = _docsState.copyWith(documents: documents);

    emit(ProfileDocumentsScreenState.loaded(_docsState));
  }

  Future<void> add() async {
    emit(const ProfileDocumentsScreenState.loading());

    final data = await _addAppDocumentsUseCase.run(_directory.path);
    final allDocs = [..._docsState.documents, ...data];
    _docsState = _docsState.copyWith(documents: allDocs);

    emit(ProfileDocumentsScreenState.loaded(_docsState));
  }

  Future<void> remove([AppDocument? document]) async {
    final removed = document != null ? [document] : _docsState.selects;

    await _removeAppDocumentUseCase.run(_directory.path, removed);

    final documents =
        _docsState.documents.where((document) => !removed.contains(document)).toList();

    _docsState = _docsState.copyWith(
      selects: [],
      documents: documents,
    );

    emit(ProfileDocumentsScreenState.loaded(_docsState));
  }

  Future<void> edit(AppDocument document, String newFileName) async {
    final newDocument = await _editAppDocumentUseCase.run(_directory.path, document, newFileName);

    final allDocs =
        _docsState.documents.map((doc) => doc.id == document.id ? newDocument : doc).toList();
    _docsState = _docsState.copyWith(documents: allDocs);

    emit(ProfileDocumentsScreenState.loaded(_docsState));
  }

  Future<void> share([AppDocument? document]) async {
    final shared = document != null ? [document] : _docsState.selects;

    _shareAppDocumentsUseCase.run(_directory.path, shared).then((_) => clear());
  }

  Future<ResultType> open(String path) async =>
      await _openAppDocumentUseCase.run(_directory.path, path);

  Future<void> select(AppDocument document) async {
    final selects = [..._docsState.selects];
    final isSelect = selects.contains(document);

    isSelect ? selects.remove(document) : selects.add(document);
    _docsState = _docsState.copyWith(selects: selects);

    emit(ProfileDocumentsScreenState.loaded(_docsState));
  }

  void selectAll() async {
    _docsState = _docsState.copyWith(selects: _docsState.documents);

    emit(ProfileDocumentsScreenState.loaded(_docsState));
  }

  void clear() {
    _docsState = _docsState.copyWith(selects: []);

    emit(ProfileDocumentsScreenState.loaded(_docsState));
  }
}
