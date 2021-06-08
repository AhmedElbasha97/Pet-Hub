import 'package:flutter/material.dart';

class HourItem extends StatelessWidget {
  final height;
  final width;
  final callback;
  final tc;
  final String availableHour;
  HourItem(
      {this.height,
      this.availableHour,
      this.width,
      this.callback,
      this.tc = true});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback(availableHour);
      },
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: tc ? Color(0xFFF8F7FB) : Theme.of(context).accentColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              availableHour ?? '',
              style: TextStyle(
                  color: tc ? Theme.of(context).primaryColor : Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
