import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day2/Login_widgets/back_button.dart';
import 'package:ui_challenge/Screens/Day2/Login_widgets/lemon_backg.dart';
import 'package:ui_challenge/Screens/Day2/Login_widgets/login_btn2.dart';
import 'package:ui_challenge/Screens/Day2/Login_widgets/text_fields.dart';
import 'package:ui_challenge/Screens/Day2/Login_widgets/white_draw.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const LemonBackg(),
          const WhiteDraw(),
          const BackFloatButton(),
          Positioned(
            bottom: 100,
            left: 16,
            right: 16,
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Log in",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextFields(),
                    LoginBtn(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
