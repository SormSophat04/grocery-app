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
        child: Container(
          height: 56,
          width: double.infinity,
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 40,
            bottom: 10,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColor.backgroundWhite,
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
              Container(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search Store',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
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
      ),
      body: Center(child: Text('Search View')),
    );
  }
}
