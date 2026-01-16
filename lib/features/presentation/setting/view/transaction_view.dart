import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';

class TransactionView extends StatefulWidget {
  const TransactionView({super.key});

  @override
  State<TransactionView> createState() => _TransactionViewState();
}

List<Map<String, Object>> cards = [
  {
    "id": 1,
    "name": "Visa Card",
    "amount": "538",
    "data": "11 Dec 2025 at 12:00pm",
    "cardImage": "assets/images/visa.png",
  },
  {
    "id": 2,
    "name": "Master Card",
    "amount": "873",
    "data": "11 Nov 2025 at 4:00pm",
    "cardImage": "assets/images/master-card.png",
  },
];

class _TransactionViewState extends State<TransactionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Transaction', actionIcon: ''),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 6),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
          height: 70,
          margin: EdgeInsets.only(bottom: 8),
          color: AppColor.backgroundWhite,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: AppColor.backgroundEnd,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage(cards[index]['cardImage'] as String),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      cards[index]['name'] as String,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      cards[index]['data'] as String,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Text(
                  '\$${cards[index]['amount']}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: AppColor.primaryDark,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
