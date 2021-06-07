import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DoctorReviewComp extends StatelessWidget {
  final mediaQuery;

  DoctorReviewComp(this.mediaQuery);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: mediaQuery.width * 0.7,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 10,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Ahmed Zein'),
                      SizedBox(
                        height: 5.0,
                      ),
                      SmoothStarRating(
                          allowHalfRating: false,
                          onRated: (v) {},
                          starCount: 5,
                          rating: 5.0,
                          size: 20.0,
                          isReadOnly: true,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          color: Colors.orangeAccent,
                          borderColor: Colors.orangeAccent,
                          spacing: 0.0)
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                    'Yesterday he brought her old woman (Cocker, 15 years old) for testing and ultrasound. Everything was done perfectly, the attitude... Read more'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('a verified review'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.green,
                          size: 20.0,
                        )
                      ],
                    ),
                    Text(
                      '26.02.2019',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 15,
          top: -15,
          child: Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/dog_add.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.redAccent,
            ),
          ),
        )
      ],
    );
  }
}
