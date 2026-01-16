import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/widgets/featured_product_card.dart';
import 'package:groceries_app/features/presentation/product/view/product_detail_view.dart';

class CustomGridView extends StatelessWidget {
  final List featuredProducts;
  const CustomGridView({super.key, required this.featuredProducts});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: featuredProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 15,
        childAspectRatio: 0.68,
      ),
      itemBuilder: (context, index) => FeaturedProductCard(
        onTapDetail: () => Get.to(
          () => ProductDetailView(),
          arguments: featuredProducts[index],
        ),
        name: featuredProducts[index]['name'] ?? '',
        price: featuredProducts[index]['price'] ?? '',
        image: featuredProducts[index]['image'] ?? '',
        status: featuredProducts[index]['status'] ?? '',
        unit: featuredProducts[index]['unit'] ?? '',
        fav: featuredProducts[index]['fav'] ?? false,
      ),
    );
  }
}
