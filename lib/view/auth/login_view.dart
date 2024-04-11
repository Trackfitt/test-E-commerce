import 'package:fashion_app/core/constants/colors/colors.dart';
import 'package:fashion_app/core/constants/style/text_styles.dart';
import 'package:fashion_app/products/widgets/buttons/custom_elevated_buttons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fashion_app/core/constants/extensions/content_extensions.dart';
import 'package:flutter/material.dart';

class LoginViewPage extends StatelessWidget {
  const LoginViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: body(context, formKey, emailController, passwordController),
    );
  }
}

Widget body(
    BuildContext context,
    GlobalKey<FormState> formKey,
    TextEditingController emailController,
    TextEditingController passwordController) {
  String email = emailController.text;
  String password = passwordController.text;

  return SafeArea(
    child: Padding(
      padding: context.paddingLow,
      child: Column(
        children: [
          _title(context),
          // Add other widgets like email input, password input, and login button
        ],
      ),
    ),
  );
}

Widget _title(BuildContext context) => Container(
      alignment: Alignment.topLeft,
      child: Text(
        AppLocalizations.of(context)!.loginScreenTitle,
        textAlign: TextAlign.left,
        style: TextStyles.headline(context),
      ),
    );

// Forgot Password TextButton Widget
Widget forgotPassword(BuildContext context) => Container(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          AppLocalizations.of(context)!.forgotyourpassword, // Corrected
          style: TextStyles.fourteenpx(context, AppColor.black),
        ),
      ),
    );

// Login button widget
Widget _loginButton(BuildContext context) => CustomElevatedButton(
      color: AppColor.primaryred,
      width: context.width * 0.8,
      onPressed: () {},
      borderRadius: 25,
      child: Text(
        AppLocalizations.of(context)!.loginScreenTitle.toUpperCase(),
        style: TextStyles.fourteenpx(context, AppColor.bgwhite),
      ),
    );
