import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorBookingImageInfoStack extends StatelessWidget {
  final mediaQuery;
  DoctorBookingImageInfoStack(this.mediaQuery);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)),
          child: Image.asset(
            'assets/images/booking_doctor.png',
            fit: BoxFit.cover,
            width: mediaQuery.width,
            height: mediaQuery.height * 0.5,
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          top: mediaQuery.height * 0.06,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              width: mediaQuery.width * 0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white),
                    child: Center(
                        child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 20.0,
                      ),
                    )),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white),
                        child: Center(
                            child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.heart,
                            size: 20.0,
                          ),
                        )),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -mediaQuery.height * 0.05,
          left: mediaQuery.width * 0.05,
          child: Container(
            height: mediaQuery.height * 0.15,
            width: mediaQuery.width * 0.9,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Dr. Ahmed Khalil'),
                      Text('Veterinary Dentist'),
                      Text('10 years of experience'),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text('1.5 km'),
                          Icon(Icons.credit_card),
                          Text('27 \$'),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Text(
                            '49',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        color: Theme.of(context).accentColor,
                      ),
                      Text('110 reviews')
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
