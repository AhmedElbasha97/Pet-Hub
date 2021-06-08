import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_hub/UI/booking_appointment/payment_choice_comp.dart';

class PaymentChoices extends StatefulWidget {
  @override
  _PaymentChoicesState createState() => _PaymentChoicesState();
}

class _PaymentChoicesState extends State<PaymentChoices> {
  int index = 1;

  void choose(int i) {
    if (index != i) {
      setState(() {
        index = i;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        PaymentChoice(
          choose: choose,
          isMyIndex: index == 1 ? true : false,
          index: 1,
          title: 'Vet Visit',
          subtitle: 'Get an appointment at the clinic.',
          icon: FontAwesomeIcons.calendarAlt,
          price: 27,
        ),
        SizedBox(
          height: 10,
        ),
        PaymentChoice(
          choose: choose,
          isMyIndex: index == 2 ? true : false,
          index: 2,
          title: 'Voice Call',
          subtitle: 'Make a voice call with doctor.',
          icon: FontAwesomeIcons.phone,
          price: 10,
        ),
        SizedBox(
          height: 10,
        ),
        PaymentChoice(
          choose: choose,
          isMyIndex: index == 3 ? true : false,
          index: 3,
          title: 'Video Call',
          subtitle: 'Make a video call with doctor.',
          icon: FontAwesomeIcons.video,
          price: 20,
        ),
        SizedBox(
          height: 10,
        ),
        PaymentChoice(
          choose: choose,
          isMyIndex: index == 4 ? true : false,
          index: 4,
          title: 'Messaging',
          subtitle: 'Privately message the doctor.',
          icon: Icons.message_outlined,
          price: 5,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
