import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/thank_you_body.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.white, body: ThankYouBody());
  }
}
