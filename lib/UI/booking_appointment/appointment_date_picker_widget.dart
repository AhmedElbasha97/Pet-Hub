import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:pet_hub/widgets/hour_picker_widget.dart';
import 'package:pet_hub/widgets/two_choices_toggle.dart';

class AppointmentDatePicker extends StatefulWidget {
  @override
  _AppointmentDatePickerState createState() => _AppointmentDatePickerState();
}

class _AppointmentDatePickerState extends State<AppointmentDatePicker> {
  String _selectedHour;
  DateTime _selectedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: Theme.of(context).accentColor,
          selectedTextColor: Colors.white,
          inactiveDates: [
            DateTime.now().add(Duration(days: 3)),
            DateTime.now().add(Duration(days: 4)),
            DateTime.now().add(Duration(days: 7))
          ],
          onDateChange: (date) {
            setState(() {
              _selectedDay = date;
            });
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        ChoicesToggle(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: HourPicker(
            height: 60.0,
            width: 90.0,
            callback: (val) {
              setState(() {
                _selectedHour = val;
              });
            },
            availableHours: ["10:00 AM", "11:00 AM", "12:00 PM", "5:00 PM"],
          ),
        )
      ],
    );
  }
}
