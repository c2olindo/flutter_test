import 'package:flutter/material.dart';

// This demonstrated the use of a Widget outside the main.dart file.
// Here we used a custom button that has one a specific use case and no other uses.
//
// A bit more advanced use has been demonstrated in the custom_button_widget.dart
// file where one button is being used in multiple use cases.
// The different is in the comments on that file.

class EditProfileButton extends StatelessWidget {
  final String text;

  const EditProfileButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFF3D3D3D)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 13, horizontal: 23)),
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        // onPressed:
      ),
    );
  }
}
