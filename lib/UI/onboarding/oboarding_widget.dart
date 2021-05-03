import 'package:flutter/material.dart';

class OnboeardWidget extends StatelessWidget {
  final String assetlink;
  final String title;
  final String subTitile;
  var islastscreen;

  OnboeardWidget({
    this.assetlink,
    this.islastscreen = false,
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
          Text('$title', style: TextStyle(color: Color(0xff16bbc7))),
          Text('$subTitile', style: TextStyle(color: Color(0xff0d3f67))),
          (islastscreen = !true)
              ? Row(
                  children: [
                    // ignore: deprecated_member_use
                    FlatButton(
                        color: Color(0xff16bbc7),
                        onPressed: () {},
                        child: Row(
                          children: [Text('Next'), Icon(Icons.arrow_forward)],
                        )),
                    // ignore: deprecated_member_use
                    FlatButton(
                        color: Colors.transparent,
                        onPressed: () {},
                        child: Text('skip',
                            style: TextStyle(color: Color(0xff0d3f67))))
                  ],
                )
              : Column(
                  children: [
                    // ignore: deprecated_member_use
                    FlatButton(
                        color: Color(0xff16bbc7),
                        onPressed: () {},
                        child: Text('Get Started',
                            style: TextStyle(color: Colors.white))),
                    // ignore: deprecated_member_use
                    FlatButton(
                        color: Colors.transparent,
                        onPressed: () {},
                        child: Text('Sign In',
                            style: TextStyle(color: Color(0xff16bbc7))))
                  ],
                )
        ],
      ),
    ));
  }
}
