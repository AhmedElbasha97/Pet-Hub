import 'package:flutter/material.dart';

class PaymentChoice extends StatelessWidget {
  final int index;
  final Function choose;
  final bool isMyIndex;
  final icon;
  final price;
  final title;
  final subtitle;
  PaymentChoice({
    this.isMyIndex,
    this.index,
    this.choose,
    this.icon,
    this.price,
    this.title,
    this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        choose(index);
      },
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: isMyIndex ? Theme.of(context).accentColor : Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.grey[100],
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: isMyIndex ? Colors.white : Colors.black54),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      color: isMyIndex ? Colors.white : Colors.black45),
                )
              ],
            ),
            Text(
              '\$$price',
              style: TextStyle(
                  color:
                      isMyIndex ? Colors.white : Theme.of(context).accentColor),
            )
          ],
        ),
      ),
    );
  }
}
