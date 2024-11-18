import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/cart_info_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
      child: Column(
        children: [
          const Text(
            'Thank you!',
            style: Styles.style25,
            textAlign: TextAlign.center,
          ),
          const Text(
            'Your transaction was successful',
            style: Styles.style18,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 42),
          const OrderInfoItem(
            title: 'Date',
            value: '01/24/2023',
          ),
          const SizedBox(height: 10),
          const OrderInfoItem(
            title: 'Time',
            value: '10:15 AM',
          ),
          const SizedBox(height: 10),
          const OrderInfoItem(
            title: 'To',
            value: 'Sam Louis',
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.grey),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                'Total',
                style: Styles.style24,
              ),
              Spacer(),
              Text(r'$50.97', style: Styles.style24),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: 305,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/logo.svg'),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Credit Card',
                      style: Styles.style18,
                    ),
                    Text('Mastercard **78')
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.barcode,
                size: 70,
              ),
              const Spacer(),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1.50,
                      color: Color(0xFF34A853),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style: Styles.style24.copyWith(
                      color: const Color(0xff34A853),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
