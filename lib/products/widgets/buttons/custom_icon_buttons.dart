import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Image icon;
  final VoidCallback onPressed;

  const CustomIconButton({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        color: color,
      ),
    );
  }
}
