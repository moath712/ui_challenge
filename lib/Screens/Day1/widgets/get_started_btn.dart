import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required Color currentButtonColor,
  }) : _currentButtonColor = currentButtonColor;

  final Color _currentButtonColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 30,
      child: Center(
        child: SizedBox(
          width: 208,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: _currentButtonColor, // Background color
            ),
            child: Text(
              'GET STARTED',
              style:
                  GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
