import 'package:flutter/material.dart';
import 'package:pet_hub/UI/doctor_booking_screen/bottom_booking_button_widget.dart';
import 'package:pet_hub/UI/doctor_booking_screen/doctor_image_info_stack_widget.dart';

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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DoctorBookingImageInfoStack(mediaQuery),
                  SizedBox(
                    height: mediaQuery.height * 0.05,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    child: Text(
                      'Available for online consultation',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.green),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: mediaQuery.height * 0.30,
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
                    ),
                  )
                ],
              ),
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
