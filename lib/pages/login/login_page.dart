// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/gen/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:hixmix/pages/forgetPassword/forget_password_page.dart';
import 'package:hixmix/pages/signUp/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailInput = TextEditingController();
  late TextEditingController passwordInput = TextEditingController();
  late bool rememberMe = false;
  late final TapGestureRecognizer signUpRecognizer;
  late final TapGestureRecognizer showTermsOfService;

  @override
  void initState() {
    super.initState();
    signUpRecognizer = TapGestureRecognizer()
      ..onTap = () {
        print("Sign Up clicked");
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => SignUpPage()),
        );
      };

    showTermsOfService = TapGestureRecognizer()
      ..onTap = () {
        print("Terms of Service clicked");
      };
  }

  @override
  void dispose() {
    signUpRecognizer.dispose();
    showTermsOfService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  // SizedBox(height: size.height / 10),
                  Image(
                    width: size.width / 1.48,
                    image: Assets.images.logo.provider(),
                  ),
                  Text(
                    "YPUR DAILY DOES OF HAPPINESS",
                    style: textTheme.bodyLarge,
                  ),
                  SizedBox(height: 30),
                  Text("Welcome Back!", style: textTheme.titleMedium),
                  // SizedBox(height: 5,),
                  Text("Login to use HixMix", style: textTheme.bodyMedium),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: SolidColors.inputBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: emailInput,
                        style: textTheme.labelSmall,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Email Address",
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: SolidColors.inputTextColor,
                          ),
                          labelStyle: textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: SolidColors.inputBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordInput,
                        style: textTheme.labelSmall,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Password",
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: SolidColors.inputTextColor,
                          ),
                          labelStyle: textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                                print("remeber me check");
                              });
                            },
                            fillColor: WidgetStateProperty.resolveWith<Color>((
                              states,
                            ) {
                              if (states.contains(WidgetState.selected)) {
                                return SolidColors.scondaryColor;
                              }
                              return Colors.transparent;
                            }),
                            shape: const CircleBorder(),
                          ),
                          Text("Remember me", style: textTheme.bodyMedium),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                          CupertinoPageRoute(builder: (context)=> ForgetPasswordPage()));

                          print("forgot password");
                        },
                        child: Text(
                          "Forgot password?",
                          style: textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
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
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          print("login clicked");
                        },
                        child: SizedBox(
                          height: 50,
                          child: Center(
                            child: Text("Login", style: textTheme.labelLarge),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("OR", style: textTheme.bodyMedium),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print("google clicked");
                      },
                      icon: Assets.images.googleLogo.image(),
                      label: Text(
                        "Continue with Google",
                        style: textTheme.labelMedium?.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: SolidColors.facebockButtonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          SolidColors.facebockButtonColor,
                        ),
                      ),
                      onPressed: () {
                        print("facebook clicked");
                      },
                      icon: Assets.images.facebookLogo.image(),
                      label: Text(
                        "Continue with Facebock",
                        style: textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          style: textTheme.bodyMedium,
                          text: "Don't have an account? ",
                        ),
                        TextSpan(
                          style: textTheme.bodyMedium?.copyWith(
                            color: SolidColors.scondaryColor,
                          ),
                          text: "Sign Up",
                          recognizer: signUpRecognizer,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: double.infinity,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: textTheme.bodySmall,
                            text:
                                "By signing up you indicate that you have read and\nagreed to the Patch ",
                          ),
                          TextSpan(
                            style: textTheme.bodySmall?.copyWith(
                              color: SolidColors.scondaryColor,
                            ),
                            text: "Terms of Service",
                            recognizer: showTermsOfService,
                          ),
                        ],
                      ),
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
