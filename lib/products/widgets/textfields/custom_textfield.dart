import 'package:fashion_app/core/constants/colors/colors.dart';
import 'package:flutter/material.dart';

textFieldCustomWidget(
  BuildContext context, {
  required String title,
  required double height,
  required double width,
  Color? color,
  controller,
}) {
  return Material(
      elevation: 20,
      child: SizedBox(
          height: height,
          width: width,
          child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  labelText: title,
                  filled: true,
                  fillColor: AppColor.bgwhite,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.bgwhite)),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: AppColor.bgwhite,
                  ))))));
}
