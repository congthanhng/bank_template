import 'package:bank_template/data/repositories_impl/credit_repository_impl.dart';
import 'package:bank_template/domain/repositories/credit_repository.dart';
import 'package:bank_template/domain/usecases/credit_usecase.dart';
import 'package:get_it/get_it.dart';

void initDependencies() {
  final injector = GetIt.I;

  injector..registerLazySingleton<CreditRepository>(
    CreditRepositoryImpl.new,
  )
  ..registerLazySingleton<CreditUseCase>(
    () => CreditUseCase(injector<CreditRepository>()),
  );
}
