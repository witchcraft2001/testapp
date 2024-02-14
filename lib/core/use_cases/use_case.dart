// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

sealed class UseCase<Type, Params extends UseCaseParams> {
  Type call(Params params);
}

abstract class ParamlessUseCase<Type> extends UseCase<Type, UseCaseParams> {
  @override
  Type call([UseCaseParams params = const NoParams()]);
}

abstract class ParamfullUseCase<Type, Params extends UseCaseParams> extends UseCase<Type, Params> {
  @override
  Type call(Params params);
}

abstract class AsyncParamlessUseCase<Type> extends UseCase<Future<Type>, UseCaseParams> {
  @override
  Future<Type> call([UseCaseParams params = const NoParams()]);
}

abstract class AsyncParamfullUseCase<Type, Params extends UseCaseParams>
    extends UseCase<Future<Type>, Params> {
  @override
  Future<Type> call(Params params);
}

abstract class StreamParamfullUseCase<Type, Params extends UseCaseParams>
    extends UseCase<Stream<Type>, Params> {
  @override
  Stream<Type> call(Params params);
}

abstract class StreamParamlessUseCase<Type> extends UseCase<Stream<Type>, UseCaseParams> {
  @override
  Stream<Type> call([UseCaseParams params = const NoParams()]);
}
