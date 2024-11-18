import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/my_cart_body.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text('My Cart'),
        ),
        body: const SingleChildScrollView(child: MyCartBody()));
  }
}
