import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class LoginApple extends StatelessWidget {
  const LoginApple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 160,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF016481),
                  Color(0xFF67D9FA),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: Text(
                      'SIGN UP',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 0.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child: Image.asset(ImageAssets.arrowright)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
