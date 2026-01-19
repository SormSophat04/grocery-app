import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 40,
                bottom: 10,
              ),
              child: Icon(Icons.arrow_back_ios_rounded, weight: 22),
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 40,
                bottom: 10,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColor.link,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/search.png',
                    height: 20,
                    width: 20,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 16),
                  const Text(
                    'Search here',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/menu.png',
                    height: 20,
                    width: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Search View')),
    );
  }
}