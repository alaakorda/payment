import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/screens/thank_you.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/screens/widgets/payment_method_list_view.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
          child: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: PaymentMethodsListView(),
      )),
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      SliverToBoxAdapter(
          child: CustomCreditCard(
        formKey: formKey,
        autovalidateMode: autovalidateMode,
      )),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 20, right: 20),
            child: CustomButton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ThankYou(),
                  ),
                );
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: 'Pay',
            ),
          ),
        ),
      )
    ]);
  }
}
