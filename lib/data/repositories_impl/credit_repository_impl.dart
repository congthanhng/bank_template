import 'package:bank_template/domain/models/credit.dart';
import 'package:bank_template/domain/repositories/credit_repository.dart';

class CreditRepositoryImpl extends CreditRepository{
  @override
  Future<List<Credit>> fetchData() {
    return Future.value(Credit.creditMock());
  }
}