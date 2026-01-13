import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/app_color.dart';

class CustomButton extends StatelessWidget {
  final String imageIconRight;
  final String textButton;
  final String imageIconLeft;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onTap;
  const CustomButton({
    super.key,
    required this.imageIconRight,
    required this.textButton,
    required this.imageIconLeft,
    required this.backgroundColor,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: backgroundColor == Colors.white
                  ? Colors.transparent
                  : AppColor.primaryDark.withOpacity(0.25),
              blurRadius: 9,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: imageIconRight != ''
                  ? null
                  : BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageIconLeft),
                        fit: BoxFit.cover,
                        colorFilter: backgroundColor == Colors.white
                            ? null
                            : ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                    ),
            ),
            Text(
              textButton,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: textColor,
              ),
            ),
            Container(
              height: 22,
              width: 22,
              decoration: imageIconLeft != ''
                  ? null
                  : BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageIconRight),
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
