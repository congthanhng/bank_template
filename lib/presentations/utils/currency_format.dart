import 'package:intl/intl.dart';

extension NumExt on double {
  static NumberFormat formatter = NumberFormat.currency(symbol: '');
  static NumberFormat digitGroupNoDecimal =
      NumberFormat.decimalPattern('en_us');

  String toMoney() {
    var result = toString();
    result = formatter.format(this);
    return '\$ $result';
  }
}
