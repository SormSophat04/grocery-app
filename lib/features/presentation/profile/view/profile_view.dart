import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/app_size.dart';
import 'package:groceries_app/core/theme/app_color.dart';
import 'package:groceries_app/features/presentation/profile/widgets/contain_order.dart';
import 'package:groceries_app/features/presentation/profile/widgets/contain_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundEnd,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ContainProfile(),
              SizedBox(height: AppSize.h12),
              ContainOrder(),
            ],
          ),
        ),
      ),
    );
  }
}
