import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text('My Cart'),
        ),
        body: const PaymentDetailsBody());
  }
}
