import 'package:flutter/material.dart';

class TimeToggleItem extends StatelessWidget {
  final Function toggle;
  final bool isToggled;
  final String title;
  final icon;

  TimeToggleItem({this.toggle, this.isToggled, this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        title == "Morning" ? toggle(1) : toggle(2);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: isToggled ? Theme.of(context).accentColor : Colors.white,
          border:
              !isToggled ? Border.all(width: 1, color: Colors.grey[300]) : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: isToggled ? Colors.white : Colors.grey[300],
                ),
                child: Center(
                  child: Icon(
                    icon,
                    color:
                        isToggled ? Theme.of(context).accentColor : Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: isToggled
                            ? Colors.white
                            : Theme.of(context).primaryColor,
                        fontSize: 18.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
