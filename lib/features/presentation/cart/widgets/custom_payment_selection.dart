import 'package:flutter/material.dart';

class CustomPaymentSelection extends StatelessWidget {
  final String namecard;
  final String image;
  const CustomPaymentSelection({
    super.key,
    required this.namecard,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(namecard, style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
