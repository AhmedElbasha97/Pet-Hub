import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_hub/UI/doctor_booking_screen/doctor_reviews_comp.dart';

class DoctorBookingReviews extends StatelessWidget {
  final mediaQuery;

  DoctorBookingReviews(this.mediaQuery);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Reviews'),
              Row(
                children: [
                  Text('View all 125 reviews'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15.0,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              Container(
                height: mediaQuery.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      child: DoctorReviewComp(mediaQuery),
                    );
                  },
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit),
                SizedBox(
                  width: 5.0,
                ),
                Text('Write a Review'),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              primary: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              textStyle: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
