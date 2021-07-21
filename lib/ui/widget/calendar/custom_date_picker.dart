import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sanlam/callback/click_listener.dart';
import 'package:sanlam/ui/widget/calendar/custom_date_time_picker.dart';

class MyDatePicker extends StatefulWidget {
  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> implements ClickListener {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MyDateTimePicker(
        text: '${DateFormat('dd/MM/yyyy').format(selectedDate)}',
        iconData: Icons.calendar_today_outlined,
        clickListener: this);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2021, 1),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  void onClick() {
    _selectDate(context);
  }
}
