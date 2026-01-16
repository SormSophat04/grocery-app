import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/features/presentation/welcome/welcome_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  int currentIndex = 0;

  List<Map<String, String>> sliders = [
    {
      'img': 'assets/images/Delivery-cuate 1.png',
      'title': 'Buy Grocery',
      'subTitle':
          'Get your groceries delivered from local stores to your doorstep',
    },
    {
      'img': 'assets/images/Online Groceries-cuate 1.png',
      'title': 'Fast Delivery',
      'subTitle':
          'Experience swift and reliable delivery service for your groceries',
    },
    {
      'img': 'assets/images/Passionate-cuate 1.png',
      'title': 'Enjoy Quality Food',
      'subTitle':
          'Savor fresh and high-quality food with every order you place',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      body: Column(
        children: [
          const SizedBox(height: 100),
          CarouselSlider(
            items: sliders.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset('${e['img']}', height: 300, width: 300),
                        const SizedBox(height: 80),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Column(
                            children: [
                              Text(
                                "${e['title']}",
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                '${e['subTitle']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.textGray,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 550.0,
              autoPlay: false,
              enlargeCenterPage: false,
              viewportFraction: 1,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index + 1;
                });
              },
              initialPage: 0,
            ),
          ),
          const SizedBox(height: 40),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 36, right: 36),
            decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => WelcomeView()),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: AppColor.textGray,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: sliders.length,
                    position: currentIndex.toDouble(),
                    decorator: DotsDecorator(
                      activeColor: AppColor.primary,
                      size: const Size.square(8.0),
                      activeSize: const Size(18.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (currentIndex == sliders.length - 1) {
                        Get.to(() => WelcomeView());
                      } else {
                        setState(() {
                          currentIndex += 1;
                        });
                      }
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
