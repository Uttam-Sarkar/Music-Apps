import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_palette.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTab;

  const AuthGradientButton({
    super.key,
    required this.buttonText,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppPalette.gradient1,
            AppPalette.gradient2
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7)
      ),
      child: ElevatedButton(
          onPressed: onTab,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: AppPalette.transparentColor,
            shadowColor: AppPalette.transparentColor,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          )
      ),
    );
  }
}
