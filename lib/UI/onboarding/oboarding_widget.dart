import 'package:flutter/material.dart';

class OnboeardWidget extends StatelessWidget {
  final String assetlink;
  final String title;
  final String subTitile;
  final bool isactive;

  OnboeardWidget({
    this.assetlink,
    this.isactive,
    this.title,
    this.subTitile,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          Image.asset(assetlink),
          Text('$title'),
          Text('$subTitile'),
          Row(
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [Text('Next'), Icon(Icons.arrow_forward)],
                  )),
              // ignore: deprecated_member_use
              FlatButton(onPressed: () {}, child: Text('skip'))
            ],
          )
        ],
      ),
    ));
  }
}
