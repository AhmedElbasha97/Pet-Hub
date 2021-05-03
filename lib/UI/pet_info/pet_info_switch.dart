import 'package:flutter/material.dart';

class PetInfoSwitch extends StatefulWidget {
  final String label;
  PetInfoSwitch({this.label});
  @override
  _PetInfoSwitchState createState() => _PetInfoSwitchState();
}

class _PetInfoSwitchState extends State<PetInfoSwitch> {
  bool switched = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontSize: 18.0),
        ),
        Switch.adaptive(
          value: switched,
          onChanged: (switchBool) {
            setState(() {
              switched = switchBool;
            });
          },
        )
      ],
    );
  }
}
