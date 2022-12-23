import 'package:intl/intl.dart';

class FormatDoubleToCurrency {
  String convertDouble(double amountToConvert) {
    final formatter = NumberFormat.currency(
      locale: 'pt_BR',
      decimalDigits: 2,
      symbol: '',
    );
    final formattedValue =
        formatter.format(num.parse(amountToConvert.toString()));

    return formattedValue;
  }
}
