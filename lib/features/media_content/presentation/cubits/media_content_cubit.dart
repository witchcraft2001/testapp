// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/presentation/cubits/media_content_cubit_state.dart';

@injectable
class MediaContentCubit extends Cubit<MediaContentCubitState> {
  MediaContentCubit() : super(const MediaContentCubitState.loading());
}
