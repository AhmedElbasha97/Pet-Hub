import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_hub/UI/doctor_booking_screen/booking_doctor_location_preview.dart';
import 'package:pet_hub/UI/doctor_booking_screen/bottom_booking_button_widget.dart';
import 'package:pet_hub/UI/doctor_booking_screen/date_picker_booking_comp.dart';
import 'package:pet_hub/UI/doctor_booking_screen/doctor_booking_reviews.dart';
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
                  DatePickerComp(mediaQuery),
                  DoctorBookingLocationPreview(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Brief',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Khalil was born on 1964 in El Fayoum. After studying veterinary medicine at Cairo University, Ahmed moved to Vienna, Austria where he completed his studies.',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Services',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 130,
                          child: ListView.builder(
                            padding: EdgeInsets.all(0.0),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (ctx, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 12.0,
                                        color: Colors.blueAccent,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text('Examination'),
                                    ],
                                  )
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  DoctorBookingReviews(mediaQuery),
                  SizedBox(
                    height: 150,
                  ),
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
