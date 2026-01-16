import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/features/presentation/setting/view/payment/add_payment_view.dart';
import 'package:groceries_app/features/presentation/setting/widgets/custom_my_credit_card.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

List<Map<String, Object>> cards = [
  {
    "id": 1,
    "name": "Visa Card",
    "number": "XXXX XXXX XXXX 7899",
    "expiry": "01/30",
    "cvv": "123",
    "cardImage": "assets/images/visa.png",
  },
  {
    "id": 2,
    "name": "Master Card",
    "number": "XXXX XXXX XXXX 4444",
    "expiry": "01/40",
    "cvv": "872",
    "cardImage": "assets/images/master-card.png",
  },
];

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(
          title: 'My Cards',
          actionIcon: 'assets/icons/add_card2.png',
          onTap: () => Get.to(() => AddPaymentView()),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 16),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: cards.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => CustomMyCreditCard(
                name: cards[index]['name'] as String,
                cardNumber: cards[index]['number'] as String,
                expiry: cards[index]['expiry'] as String,
                cvv: cards[index]['cvv'] as String,
                cardImage: cards[index]['cardImage'] as String,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
