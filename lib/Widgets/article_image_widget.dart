import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 0, 15, 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(50),
          child: Image.asset(
            'images/beach_pic_1.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
