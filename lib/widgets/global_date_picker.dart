import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'dart:io' show Platform;

import '../UI/add_pet_screen/simple_text_field_comp.dart';

class GlobalDatePicker extends StatefulWidget {
  @override
  _GlobalDatePickerState createState() => _GlobalDatePickerState();
}

class _GlobalDatePickerState extends State<GlobalDatePicker> {
  DateTime selectedDate = DateTime.now();
  TextEditingController _date = new TextEditingController();

  DateTime date = DateTime.now();
  DateTime newDateTime;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _date.value = TextEditingValue(text: picked.toString());
      });
  }

  void _showCupertinoPicker(size) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: size.width * 0.8,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)),
            ),
            child: Stack(
              children: [
                CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: date,
                  onDateTimeChanged: (DateTime addSelectedDate) {
                    this.newDateTime = addSelectedDate;
                    date = newDateTime;
                  },
                ),
                Align(
                  alignment: Alignment(0.9, 0.9),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDate = newDateTime;
                      });
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if (Platform.isAndroid) {
          _selectDate(context);
        } else if (Platform.isIOS) {
          _showCupertinoPicker(size);
        }
      },
      child: Stack(
        children: [
          Positioned(
            child: SimpleTextFieldComp(
                label: "Date of Birth",
                hint:
                    DateFormat.yMMMMd('en_US').format(selectedDate).toString(),
                arrow: true),
          ),
          Positioned(
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.17,
            ),
          )
        ],
      ),
    );
  }
}
