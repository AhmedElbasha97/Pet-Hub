import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_hub/widgets/hour_picker_widget.dart';

class DatePickerComp extends StatefulWidget {
  final mediaQuery;
  DatePickerComp(this.mediaQuery);
  @override
  _DatePickerCompState createState() => _DatePickerCompState();
}

class _DatePickerCompState extends State<DatePickerComp> {
  DateTime _selectedDay;
  String _selectedHour;
  DatePickerController _controller = DatePickerController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: widget.mediaQuery.height * 0.30,
          width: widget.mediaQuery.width * 0.9,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF8F7FB),
                      ),
                      child: Icon(Icons.calendar_today),
                    ),
                  ),
                  Text('September'),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20.0,
                      ),
                      onPressed: () {})
                ],
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                      // New date selected
                      setState(() {
                        _selectedDay = date;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HourPicker(
                      height: 40.0,
                      width: 90.0,
                      callback: (val) {
                        setState(() {
                          _selectedHour = val;
                        });
                      },
                      availableHours: ["10:00 AM", "5:00 PM"],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
