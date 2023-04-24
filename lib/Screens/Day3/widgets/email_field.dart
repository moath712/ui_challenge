import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: Text(
            "Your Email",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.appletextfield,
              border: Border.all(color: const Color(0xFF4B5378)),
            ),
            child: const TextField(
              style: TextStyle(
                  color: AppColors.applefield,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
              decoration: InputDecoration(
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
                  AssetImage(ImageAssets.mail),
                  color: Color(0xFF99E6FC),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
