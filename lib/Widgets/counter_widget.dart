import 'package:flutter/material.dart';

// This is for the part that goes with the number of posts and stuff

class PostCounter extends StatelessWidget {
  final String postCount;
  final String postType;

  const PostCounter({
    Key? key,
    required this.postCount,
    required this.postType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            postCount,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF3D3D3D),
            ),
          ),
          Text(
            postType,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
