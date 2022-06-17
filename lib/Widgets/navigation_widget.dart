import 'package:flutter/material.dart';

class NavigationBarButton extends StatelessWidget {
  final String text;
  final Color color;

  const NavigationBarButton({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      // style: ,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}

//0xFF3D3D3D
