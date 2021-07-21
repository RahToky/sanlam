import 'package:flutter/material.dart';
import 'package:sanlam/callback/click_listener.dart';
import 'package:sanlam/ui/widget/calendar/custom_date_time_picker.dart';

class MyTimePicker extends StatefulWidget {
  @override
  _MyTimePickerState createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> implements ClickListener {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return MyDateTimePicker(
        text: '${selectedTime.hour>10?selectedTime.hour:'0${selectedTime.hour}'}:${selectedTime.minute>10?selectedTime.minute:'0${selectedTime.minute}'}', iconData: Icons.access_time, clickListener: this);
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: selectedTime/*,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child,
          );
        }*/);

    if (picked != null && picked != selectedTime)
      setState(
        () {
          selectedTime = picked;
        },
      );
  }

  @override
  void onClick() {
    _selectTime(context);
  }
}
