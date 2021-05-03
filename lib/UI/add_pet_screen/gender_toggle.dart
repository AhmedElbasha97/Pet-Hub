import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderToggleWidget extends StatefulWidget {
  @override
  _GenderToggleWidgetState createState() => _GenderToggleWidgetState();
}

class _GenderToggleWidgetState extends State<GenderToggleWidget> {
  List<bool> isSelected1 = [true];
  List<bool> isSelected2 = [false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ToggleButtons(
          borderRadius: BorderRadius.circular(12.0),
          isSelected: isSelected1,
          onPressed: (int index) {
            if (!isSelected1[0]) {
              setState(() {
                isSelected1[index] = !isSelected1[index];
                isSelected2[index] = !isSelected2[index];
              });
            }
          },
          constraints: BoxConstraints(
              minHeight: 32.0,
              minWidth: MediaQuery.of(context).size.width * 0.42),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.mars,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Male',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 15.0,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
        ToggleButtons(
          isSelected: isSelected2,
          onPressed: (int index) {
            if (!isSelected2[0]) {
              setState(() {
                isSelected1[index] = !isSelected1[index];
                isSelected2[index] = !isSelected2[index];
              });
            }
          },
          borderRadius: BorderRadius.circular(12.0),
          constraints: BoxConstraints(
              minHeight: 32.0,
              minWidth: MediaQuery.of(context).size.width * 0.42),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.venus,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Female',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 10.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
