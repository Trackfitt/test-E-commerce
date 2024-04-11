// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  Widget? child;
  final double height;
  final Color color;
  final double width;
  final double borderRadius;
  final VoidCallback onPressed;

  CustomElevatedButton({
    super.key,
    this.height = 50.0,
    required this.color,
    required this.width,
    this.borderRadius = 2.0,
    required this.onPressed, required Text child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
