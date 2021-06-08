import 'package:flutter/material.dart';
import 'package:pet_hub/UI/booking_appointment/appointment_date_picker_widget.dart';
import 'package:pet_hub/widgets/global_appbar.dart';

class BookingAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GlobalAppbar(
        title: 'Appointment',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wed 20, Jan 2021',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  AppointmentDatePicker(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    padding: EdgeInsets.symmetric(vertical: 18),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
