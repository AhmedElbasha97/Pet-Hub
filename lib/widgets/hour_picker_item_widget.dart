import 'package:flutter/material.dart';

class HourItem extends StatefulWidget {
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
  _HourItemState createState() => _HourItemState();
}

class _HourItemState extends State<HourItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.callback(widget.availableHour);
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        margin: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: widget.tc ? Color(0xFFF8F7FB) : Theme.of(context).accentColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              widget.availableHour ?? '',
              style: TextStyle(
                  color:
                      widget.tc ? Theme.of(context).primaryColor : Colors.white,
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
