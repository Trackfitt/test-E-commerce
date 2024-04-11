import 'package:flutter/material.dart';
import 'package:fashion_app/core/constants/colors/colors.dart';

textFieldSearchWidget(
  BuildContext context, {
  String? title,
  Color? color,
  double? radius,
  controller,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: title,
        filled: false,
        fillColor: AppColor.black,
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(radius!))),
  );
}
