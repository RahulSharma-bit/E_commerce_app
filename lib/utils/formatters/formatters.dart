import 'package:intl/intl.dart';

class RFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en-US', symbol: '\$').format(amount);
    //   customize currency locale and symbol as needed
  }

  static String formatIndianPhoneNumber(String phoneNumber) {
    // Remove spaces, dashes, brackets etc
    String cleaned = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Remove country code if already present
    if (cleaned.startsWith('91') && cleaned.length == 12) {
      cleaned = cleaned.substring(2);
    }

    // If valid 10 digit Indian mobile number
    if (cleaned.length == 10) {
      return '+91 ${cleaned.substring(0, 5)} ${cleaned.substring(5)}';
    }
    // Return original if invalid
    return phoneNumber;
  }
}
