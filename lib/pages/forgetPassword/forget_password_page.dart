// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});
  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPage();
}

class _ForgetPasswordPage extends State<ForgetPasswordPage> {

  late final TapGestureRecognizer loginRecognizer;

  @override
  void initState() {
    super.initState();
    loginRecognizer = TapGestureRecognizer()
    ..onTap=(){
      Navigator.pop(context);
    };
  }

  @override
  void dispose() {
    loginRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.sizeOf(context);
    late TextEditingController emailInput = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 1.2,
              colors: GradiantColors.bgColor,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: size.width / 1.19,
              child: Column(
                children: [
                  SizedBox(height: size.height / 3.48),
                  Text(style: textTheme.titleMedium, "Forgot Password"),
                  Text(
                    textAlign: TextAlign.center,
                    style: textTheme.bodyMedium,
                    "Enter your email address below.\nWe'll look for your account and send you a\npassword reset email.",
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: SolidColors.inputBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: textTheme.labelSmall,
                        controller: emailInput,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: SolidColors.inputTextColor,
                          ),
                          label: Text(
                            "Email Address",
                            style: textTheme.labelSmall,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  Material(
                    color: Colors.transparent,
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: GradiantColors.buttonColor,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          print("Send Password Reset Email");
                        },
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(
                              "Send Password Reset",
                              style: textTheme.labelLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height / 3),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          style: textTheme.bodyMedium,
                          text: "Already have an account? ",
                        ),
                        TextSpan(
                          style: textTheme.bodyMedium?.copyWith(
                            color: SolidColors.scondaryColor,
                          ),
                          text: "Log in ",
                          recognizer: loginRecognizer
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
