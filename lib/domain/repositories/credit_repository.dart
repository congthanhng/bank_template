import 'package:bank_template/domain/models/credit.dart';

abstract class CreditRepository {
  Future<List<Credit>> fetchData();
}
