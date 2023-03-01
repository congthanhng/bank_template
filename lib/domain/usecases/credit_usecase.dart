import 'package:bank_template/domain/models/credit.dart';
import 'package:bank_template/domain/repositories/credit_repository.dart';
import 'package:get_it/get_it.dart';

class CreditUseCase {
  CreditUseCase(CreditRepository? creditRepository)
      : _creditRepository = creditRepository ?? GetIt.I<CreditRepository>();

  final CreditRepository _creditRepository;

  Future<List<Credit>> fetchData() {
    return _creditRepository.fetchData();
  }
}
