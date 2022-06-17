import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    leading: const BackButton(),
    centerTitle: true,
    title: const Text('Profile'),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_horiz),
      )
    ],
    elevation: 0,
  );
}
