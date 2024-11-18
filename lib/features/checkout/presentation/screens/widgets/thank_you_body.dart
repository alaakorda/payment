import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/dash_line.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/thank_you_card.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20, top: 80, bottom: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const ThankYouCard(),
          const Positioned(
              left: 0,
              right: 0,
              top: -40,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xffD9D9D9),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff34A853),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              )),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0),
              child: DashLine(),
            ),
          ),
        ],
      ),
    );
  }
}
