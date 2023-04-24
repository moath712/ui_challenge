import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day2/day_2_login.dart';
import 'package:ui_challenge/style/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 208,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyLoginPage()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: const Text(
          'Login',
          style: TextStyle(color: AppColors.orange22, fontSize: 18),
        ),
      ),
    );
  }
}
