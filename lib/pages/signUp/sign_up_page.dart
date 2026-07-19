import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/gen/assets.gen.dart';
import 'package:hixmix/pages/login/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  late final TapGestureRecognizer LoginRecognizer;

  @override
  void initState() {
    super.initState();
    LoginRecognizer = TapGestureRecognizer()
      ..onTap = () {
        print("Sign Up clicked");
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => LoginPage()),
        );
      };
  }

  @override
  void dispose() {
    LoginRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.sizeOf(context);
    late bool sendNewsEmail = false;

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
                  SizedBox(height: size.height / 10),
                  Text(
                    "Sign Up",
                    style: textTheme.titleMedium?.copyWith(fontSize: 30),
                  ),
                  Text("Sign Up and Enjoy it", style: textTheme.bodyLarge),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: SolidColors.inputBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: textTheme.labelSmall,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person,
                            color: SolidColors.inputTextColor,
                          ),
                          label: Text("User Name"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: SolidColors.inputBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: textTheme.labelSmall,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: SolidColors.inputTextColor,
                          ),
                          label: Text("Email"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: SolidColors.inputBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: textTheme.labelSmall,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: SolidColors.inputTextColor,
                          ),
                          label: Text("Password"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Checkbox(
                        value: sendNewsEmail,
                        onChanged: (value) {
                          setState(() {
                            sendNewsEmail = value!;
                            print("send News Email check");
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
                      Text(
                        style: textTheme.bodyMedium,
                        "Yes! I want to get the most out of Ezymaster by\nreceiving emails with exclusive deals and learning tips!",
                      ),
                    ],
                  ),

                  SizedBox(height: 50),
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
                          height: 60,
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
                    height: 60,
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
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 60,
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
                  SizedBox(height: 80),
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
                          text: "Log in",
                          recognizer: LoginRecognizer,
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
