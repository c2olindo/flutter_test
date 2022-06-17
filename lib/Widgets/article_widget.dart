// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'article_image_widget.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const ArticleImage(),
          Container(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Line
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(8),
                        child: Image.asset(
                          'images/girl_face.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Rudi Nur Din Am',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Second Line
                const Text('I\'m Going to Shake Your Hand Way Too Hard'),
                const SizedBox(
                  height: 10,
                ),
                // Last line
                Row(
                  children: const [
                    Icon(
                      Icons.access_time_outlined,
                      color: Colors.blueGrey,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('24 min'),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage('images/emoji_eye_heart.png'),
                      height: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('3.5K'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border_rounded),
              iconSize: 20,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
