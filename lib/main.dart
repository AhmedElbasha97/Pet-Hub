import 'package:flutter/material.dart';
import 'package:pethub/authentication/signIn.dart';

import 'authentication/signUp.dart';

void main() => runApp(
  MaterialApp(home: SignIn()),
);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const curveHeight = 50.0;

    return Scaffold(
      appBar: AppBar(
        shape: const MyShapeBorder(curveHeight),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: curveHeight),
        children: List.generate(
          100,
              (i) => Text('This is item $i in this list'),
        ),
      ),
    );
  }
}

class MyShapeBorder extends ContinuousRectangleBorder {
  const MyShapeBorder(this.curveHeight);
  final double curveHeight;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) => Path()
    ..lineTo(0, rect.size.height)
    ..quadraticBezierTo(
      rect.size.width / 2,
      rect.size.height + curveHeight * 2,
      rect.size.width,
      rect.size.height,
    )
    ..lineTo(rect.size.width, 0)
    ..close();
}
