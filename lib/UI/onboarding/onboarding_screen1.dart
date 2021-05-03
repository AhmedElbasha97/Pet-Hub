import 'package:flutter/material.dart';
import 'package:pethub/UI/onboarding/oboarding_widget.dart';

class OnboeardScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboeardWidget(
      assetlink: '',
      islastscreen: false,
      title: 'Happier ,Healthier Pets',
      subTitile: 'Make an appointment with your vets in just a few clicks',
    );
  }
}
