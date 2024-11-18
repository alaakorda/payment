import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/screens/payment_details.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/cart_info_item.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/payment_method_list_view.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/total_price.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          Image.asset('assets/images/Group 6.png'),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const SizedBox(
            height: 3,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          const TotalPrice(
            title: 'Total',
            value: r'$50.97',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              text: 'Complete Payment',
              onTap: () {
                // {
                //   Navigator.of(context).push(
                //     MaterialPageRoute(
                //       builder: (context) => PaymentDetails(),
                //     ),
                //   );
                // }
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const PaymentMethodsBottomSheet();
                    });
              })
        ],
      ),
    );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButton(text: 'Continue'),
        ],
      ),
    );
  }
}
