import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String imageIcon;
  final bool obscureText;
  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    required this.imageIcon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: Colors.grey,
            ),
            icon: imageIcon == ''
                ? null
                : Image.asset(
                    imageIcon,
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
          ),
        ),
      ),
    );
  }
}
