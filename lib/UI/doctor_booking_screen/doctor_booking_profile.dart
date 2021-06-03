import 'package:flutter/material.dart';
import 'package:pet_hub/UI/doctor_booking_screen/bottom_booking_button_widget.dart';

class DoctorBookingProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: mediaQuery.width,
            height: mediaQuery.height,
            color: Color(0xFFF8F7FB),
          ),
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
            bottom: 0,
            child: BottomBookingWidget(mediaQuery),
          )
        ],
      ),
    );
  }
}
