import 'package:flutter/material.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Reviews', actionIcon: ''),
      ),
    );
  }
}
