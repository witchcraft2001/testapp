// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file_plus/open_file_plus.dart';

// Project imports:
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';
import 'package:terralinkapp/features/profile_documents/domain/states/profile_documents_cubit_state.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/add_app_documents_use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/edit_app_documents_use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/get_app_documents_use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/init_case_app_documents_use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/open_app_document_use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/app_document_use_case_params.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/documents_use_case_params.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/path_use_case_params.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/query_use_case_params.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/remove_case_app_documents_use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/share_app_documents_use_case.dart';

@injectable
class ProfileDocumentsCubit extends Cubit<ProfileDocumentsCubitState> {
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
  ) : super(const ProfileDocumentsCubitState.loading());

  late Directory _directory;
  ProfileDocumentsState _current = const ProfileDocumentsState();

  Future<void> init() async {
    _directory = await _initAppDocumentsUseCase();
  }

  Future<void> get([String? query]) async {
    emit(const ProfileDocumentsCubitState.loading());

    final documents = await _getAppDocumentsUseCase(QueryUseCaseParams(query));
    _current = _current.copyWith(documents: documents);

    emit(ProfileDocumentsCubitState.ready(_current));
  }

  Future<void> add() async {
    emit(const ProfileDocumentsCubitState.loading());

    final data = await _addAppDocumentsUseCase(PathUseCaseParams(_directory.path));
    final allDocs = [..._current.documents, ...data];
    _current = _current.copyWith(documents: allDocs);

    emit(ProfileDocumentsCubitState.ready(_current));
  }

  Future<void> remove([AppDocument? document]) async {
    final removed = document != null ? [document] : _current.selects;

    await _removeAppDocumentUseCase(DocumentsUseCaseParams(
      directoryPath: _directory.path,
      documents: removed,
    ));

    final documents = _current.documents.where((document) => !removed.contains(document)).toList();

    _current = _current.copyWith(
      selects: [],
      documents: documents,
    );

    emit(ProfileDocumentsCubitState.ready(_current));
  }

  Future<void> edit(AppDocument document, String newFileName) async {
    final newDocument = await _editAppDocumentUseCase(
      AppDocumentUseCaseParams(
        directoryPath: _directory.path,
        document: document,
        newFileName: newFileName,
      ),
    );

    final allDocs =
        _current.documents.map((doc) => doc.id == document.id ? newDocument : doc).toList();
    _current = _current.copyWith(documents: allDocs);

    emit(ProfileDocumentsCubitState.ready(_current));
  }

  Future<void> share(Rect? sharePosition, [AppDocument? document]) async {
    final shared = document != null ? [document] : _current.selects;

    _shareAppDocumentsUseCase(DocumentsSharedUseCaseParams(
      directoryPath: _directory.path,
      documents: shared,
      sharePosition: sharePosition,
    )).then((_) => clear());
  }

  Future<ResultType> open(String path) async =>
      await _openAppDocumentUseCase(PathUseCaseParams.combine([_directory.path, path]));

  Future<void> select(AppDocument document) async {
    final selects = [..._current.selects];
    final isSelect = selects.contains(document);

    isSelect ? selects.remove(document) : selects.add(document);
    _current = _current.copyWith(selects: selects);

    emit(ProfileDocumentsCubitState.ready(_current));
  }

  void selectAll() async {
    _current = _current.copyWith(selects: _current.documents);

    emit(ProfileDocumentsCubitState.ready(_current));
  }

  void clear() {
    _current = _current.copyWith(selects: []);

    emit(ProfileDocumentsCubitState.ready(_current));
  }
}
