import 'package:intl/intl.dart';

String formatCurrency(double amount) {
  NumberFormat currencyFormatter =
      NumberFormat.currency(locale: 'en_US', symbol: '\$');

  return currencyFormatter.format(amount).replaceAll(',', '.');
}
