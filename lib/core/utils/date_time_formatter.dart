import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension FormatDateTime on DateTime {
  String formatDateWithTime(BuildContext context) {
    final DateFormat dateFormatter = DateFormat.yMMMd();
    final String formattedDate = dateFormatter.format(this);
    final String formattedTime = TimeOfDay.fromDateTime(this).format(context);
    return "$formattedDate,  $formattedTime";
  }
  String formatDate(BuildContext context) {
    final DateFormat dateFormatter = DateFormat.yMMMd();
    final String formattedDate = dateFormatter.format(this);
    return formattedDate;
  }
}
