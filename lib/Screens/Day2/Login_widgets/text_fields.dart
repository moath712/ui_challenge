import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 70,
        ),
        Text(
          "Your Email",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            prefixIcon: ImageIcon(
              color: AppColors.keymail,
              AssetImage(ImageAssets.mail),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Your Password",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
          obscureText: true,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: ImageIcon(
              color: AppColors.keymail,
              AssetImage(ImageAssets.password),
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
