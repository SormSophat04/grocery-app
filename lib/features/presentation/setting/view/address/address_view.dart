import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/core/widgets/custom_app_bar.dart';
import 'package:groceries_app/features/presentation/setting/view/address/add_address_view.dart';
import 'package:groceries_app/features/presentation/setting/widgets/custom_my_address.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundSecondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(
          title: 'My Address',
          actionIcon: 'assets/icons/pin.png',
          onTap: () => Get.to(() => AddAddressView()),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 6),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => CustomMyAddress(
          name: 'Home',
          cardImage: 'assets/icons/pin.png',
          phoneNumber: '099-432-8372',
          address: '2811 Crescent Day. LA Port California, United States 77571',
        ),
      ),
    );
  }
}
