import 'package:intl/intl.dart';

class Format {
  
  static String formatValue(double amount, String currency){
  final format= NumberFormat.currency(symbol: currency, decimalDigits: 2);
  final over1mFormater = NumberFormat.compactCurrency(symbol: currency);

    return amount >= 100000? over1mFormater.format(amount) : format.format(amount);
  }
}