
import 'package:intl/intl.dart';

class Utils
{
  static String getFormattedDate(DateTime date) {
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(date);
   return formatted;
}


  static String stringToDate(String date) {

    DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse(date);
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(tempDate);
    return formatted;
  }
}