import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class UpperContent extends StatelessWidget {
  const UpperContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 70,
        ),
        Image.asset(
          ImageAssets.apple,
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Sign up",
          style: TextStyle(
              fontSize: 36, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Already have an account?",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign in",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF99E6FC),
              decoration: TextDecoration.underline,
              decorationColor: Color(0xFF99E6FC),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
