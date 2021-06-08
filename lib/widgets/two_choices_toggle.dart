import 'package:flutter/material.dart';
import 'package:pet_hub/UI/booking_appointment/time_span_toggle_item.dart';

class ChoicesToggle extends StatefulWidget {
  @override
  _ChoicesToggleState createState() => _ChoicesToggleState();
}

class _ChoicesToggleState extends State<ChoicesToggle> {
  bool isToggled = true;
  int index = 1;

  void toggle(int i) {
    if (index != i) {
      setState(() {
        isToggled = !isToggled;
      });
    }
    index = i;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: TimeToggleItem(
            toggle: toggle,
            isToggled: isToggled,
            title: 'Morning',
            icon: Icons.wb_sunny,
          )),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: TimeToggleItem(
            toggle: toggle,
            isToggled: !isToggled,
            title: 'Evening',
            icon: Icons.cloud_sharp,
          )),
        ],
      ),
    );
  }
}
