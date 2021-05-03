import 'package:flutter/material.dart';
import 'package:pethub/UI/onboarding/oboarding_widget.dart';

class OnboeardScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboeardWidget(
      assetlink: '',
      islastscreen: true,
      title: 'Take Care of Your Pet',
      subTitile:
          'This app will take care of your pet, so that you will have more time playing with it.',
    );
  }
}
