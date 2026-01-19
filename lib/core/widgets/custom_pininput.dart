import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPininput extends StatelessWidget {
  const CustomPininput({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Define the default visual state (the empty box with a dot)
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
    );

    return Center(
      child: Pinput(
        length: 6,
        defaultPinTheme: defaultPinTheme,
        // 2. Custom builder to show the dot when the field is empty
        preFilledWidget: const Text(
          '●',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black, // Or a lighter grey if preferred
          ),
        ),
        // 3. Optional: visual changes when focused
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: Colors.blue),
          ),
        ),
        onCompleted: (pin) => print("Entered PIN: $pin"),
      ),
    );
  }
}
