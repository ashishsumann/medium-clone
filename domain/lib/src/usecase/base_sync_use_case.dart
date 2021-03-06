import 'package:domain/src/model/safe_result.dart';

abstract class BaseSyncUseCase<Result, Params> {
  Future<SafeResult<Result>> call(Params params, [bool performSync = false]);
}
