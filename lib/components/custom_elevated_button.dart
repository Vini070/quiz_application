import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
    this.buttonText, {
    super.key,
    this.onTap,
  });

  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 303,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Color(0xff01356B),
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}