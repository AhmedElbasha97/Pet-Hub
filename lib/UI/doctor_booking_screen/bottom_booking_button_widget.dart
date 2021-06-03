import 'package:flutter/material.dart';

class BottomBookingWidget extends StatelessWidget {
  final mediaQuery;
  BottomBookingWidget(this.mediaQuery);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery.height * 0.15,
      width: mediaQuery.width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 10,
              blurRadius: 40,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          )),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text('\$27'),
                    Text(' / first visit'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [Text('Reviews'), Text('Rev')],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Book'),
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  textStyle: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
