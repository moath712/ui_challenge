import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/Day2/Home_widgets/forgot_password.dart';
import 'package:ui_challenge/screens/Day2/Home_widgets/image_description.dart';
import 'package:ui_challenge/screens/Day2/Home_widgets/login_btn.dart';
import 'package:ui_challenge/screens/Day2/Home_widgets/sign_up_btn.dart';
import 'package:ui_challenge/screens/Day2/Home_widgets/social_bar.dart';

class Day2 extends StatelessWidget {
  const Day2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFEDCE0),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                ImageDescription(),
                SignUpButton(),
                SizedBox(height: 18),
                LoginButton(),
                SizedBox(height: 5),
                ForgotPassword(),
              ],
            ),
            const SocialBar()
          ],
        ),
      ),
    );
  }
}
