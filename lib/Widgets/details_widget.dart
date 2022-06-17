import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Rica Nur Khoriahi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.verified_rounded,
          color: Color(0xFF52C1F0),
          size: 15,
        ),
      ],
    );
  }
}
