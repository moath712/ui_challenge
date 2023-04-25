import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day3/widgets/email_field.dart';
import 'package:ui_challenge/Screens/Day3/widgets/follow_us_bar.dart';
import 'package:ui_challenge/Screens/Day3/widgets/login_apple.dart';
import 'package:ui_challenge/Screens/Day3/widgets/name_field.dart';
import 'package:ui_challenge/Screens/Day3/widgets/upper_content.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000417),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UpperContent(),
              const NameField(),
              const SizedBox(height: 12),
              const EmailField(),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: Text(
                      "Your Password",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: const Color(0xFF4B5378)),
                        color: AppColors.appletextfield,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              obscureText: _obscureText,
                              obscuringCharacter: '*',
                              style: const TextStyle(
                                  color: AppColors.applefield,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.appletextfield,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.appletextfield,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.appletextfield,
                                  ),
                                ),
                                prefixIcon: ImageIcon(
                                  AssetImage(ImageAssets.password),
                                  color: AppColors.appleicons,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: AppColors.appleicons,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const LoginApple(),
              const SizedBox(height: 90),
              const FollowUsBar(),
            ],
          ),
        ),
      ),
    );
  }
}
