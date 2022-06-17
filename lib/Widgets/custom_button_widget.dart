import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double paddingVertical;
  final double paddingHorizontal;
  final Color buttonColor;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.paddingVertical,
    required this.paddingHorizontal,
    required this.buttonColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // Add to story Button
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(
              vertical: paddingVertical, horizontal: paddingHorizontal)),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        ),
        // onPressed:
      ),
    );
  }
}

// 0xFF3D3D3D
