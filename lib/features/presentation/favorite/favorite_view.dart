import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/core/widgets/custom_grid_view.dart';
import 'package:groceries_app/core/widgets/custom_product_listview.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  List<dynamic> favoritesProducts = [
    {
      "id": 1,
      "name": "Pomegranate",
      "price": "4.99",
      "image": "assets/images/pomegranate-11.png",
      "status": "20% Off",
      "unit": "1kg",
      "fav": true,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 2,
      "name": "Apple",
      "price": "3.99",
      "image": "assets/images/pineapple-pieces.png",
      "status": "New",
      "unit": "1kg",
      "fav": true,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
    {
      "id": 3,
      "name": "Banana",
      "price": "2.99",
      "image": "assets/images/grapes-31.png",
      "status": "15% Off",
      "unit": "1kg",
      "fav": true,
      "rate": 4.5,
      "description":
          "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(title: 'Favorites', actionIcon: ''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: CustomGridView(featuredProducts: favoritesProducts),
      ),
    );
  }
}
