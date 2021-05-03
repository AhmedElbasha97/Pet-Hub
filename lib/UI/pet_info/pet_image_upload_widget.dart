import 'package:flutter/material.dart';

class PetImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: MediaQuery.of(context).size.width * .3,
            height: MediaQuery.of(context).size.width * .3,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage("assets/images/dog_add.jpg"),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: MediaQuery.of(context).size.width * .08,
            height: MediaQuery.of(context).size.width * .08,
            decoration: new BoxDecoration(
                shape: BoxShape.circle, color: Theme.of(context).primaryColor),
            child: new RawMaterialButton(
              onPressed: () {},
              elevation: 5.0,
              fillColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.add,
                size: 30.0,
                color: Colors.white,
              ),
              shape: CircleBorder(),
            ),
          ),
        )
      ],
    );
  }
}
