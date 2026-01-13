import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/features/presentation/favorite/favorite_view.dart';
import 'package:groceries_app/features/presentation/home/home_view.dart';
import 'package:groceries_app/features/presentation/profile/profile_view.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

final List _pages = const [HomeView(), ProfileView(), FavoriteView()];

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      extendBody: true,
      floatingActionButton: CircleAvatar(
        backgroundColor: AppColor.primaryDark,
        radius: 30,
        child: Image.asset(
          'assets/icons/nav_bar/shopping-bag.png',
          height: 34,
          width: 34,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Container(
        height: 66,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Image.asset(
                selectedIndex == 0
                    ? 'assets/icons/nav_bar/home.png'
                    : 'assets/icons/nav_bar/home (1).png',
                height: 24,
                width: 24,
                color: selectedIndex == 0 ? AppColor.primaryDark : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Image.asset(
                selectedIndex == 1
                    ? 'assets/icons/nav_bar/user.png'
                    : 'assets/icons/nav_bar/user (1).png',
                height: 24,
                width: 24,
                color: selectedIndex == 1 ? AppColor.primaryDark : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Image.asset(
                selectedIndex == 2
                    ? 'assets/icons/nav_bar/favorite.png'
                    : 'assets/icons/nav_bar/favorite (1).png',
                height: 24,
                width: 24,
                color: selectedIndex == 2 ? Colors.redAccent : Colors.grey,
              ),
            ),
            Container(width: 24, height: 24),
          ],
        ),
      ),
    );
  }
}
