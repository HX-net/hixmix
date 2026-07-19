import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.sizeOf(context);
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
            child: Column(
              children: [
                  SizedBox(height: size.height / 10),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: SolidColors.primaryTextColor,
                    fontSize: 25,
                  ),
                ),
                Text("Sign Up and Enjoy it",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
