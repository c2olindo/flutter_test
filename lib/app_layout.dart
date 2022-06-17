// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_demo/Widgets/appbar_widget.dart';
import 'package:flutter_demo/Widgets/article_widget.dart';
import 'package:flutter_demo/Widgets/avatar_widget.dart';
import 'package:flutter_demo/Widgets/counter_widget.dart';
import 'package:flutter_demo/Widgets/custom_button_widget.dart';
import 'package:flutter_demo/Widgets/details_widget.dart';
import 'package:flutter_demo/Widgets/divider.dart';
import 'package:flutter_demo/Widgets/edit_button_widget.dart';
import 'package:flutter_demo/Widgets/navigation_widget.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  _AppLayoutState createState() => _AppLayoutState();
}

// SizedBox is used to create a gap between parts of the contents and separate them
class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors
          .white, // Disable the App theme from main.dart and define a custom background color like this
      appBar: buildAppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            const CustomDivider(),

            const SizedBox(
              height: 10,
            ),

            const ProfilePicture(),

            const SizedBox(
              height: 10,
            ),

            // User name
            const UserDetails(),
            // Member Since
            const Text(
              'Member since 2019',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black26,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            //Profile Edit Button
            const EditProfileButton(text: 'Edit Profile'),

            const SizedBox(
              height: 20,
            ),

            // Details
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Sub detail 1
                PostCounter(postCount: '1030', postType: 'Post'),

                SizedBox(
                  width: 20,
                ),

                // Vertical Divider
                VerticalDivider(
                  color: Colors.black45,
                  thickness: 5,
                  width: 10,
                ),

                SizedBox(
                  width: 20,
                ),

                // Sub detail 2 here
                PostCounter(postCount: '3456', postType: 'Following'),

                SizedBox(
                  width: 20,
                ),

                // Vertical Divider
                VerticalDivider(
                  color: Colors.black45,
                  thickness: 5,
                  width: 10,
                ),

                SizedBox(
                  width: 20,
                ),

                // Sub detail 3
                PostCounter(postCount: '45678', postType: 'Followers'),
              ],
            ),

            const SizedBox(
              height: 5,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFF5F9FE),
            ),

            //Here using one single button widget to use in two different buttons
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomButton(
                    text: 'Add to story',
                    paddingVertical: 10,
                    paddingHorizontal: 50,
                    buttonColor: Color(0xFF3D3D3D),
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                    text: 'Message',
                    paddingVertical: 10,
                    paddingHorizontal: 30,
                    buttonColor: Colors.transparent,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),

            const CustomDivider(),

            Container(
              child: Row(
                children: const [
                  NavigationBarButton(
                      text: 'Article', color: Color(0xFF3D3D3D)),
                  NavigationBarButton(text: 'Saved', color: Colors.blueGrey),
                  NavigationBarButton(
                      text: 'Highlights', color: Colors.blueGrey),
                ],
              ),
            ),

            const CustomDivider(),

            const SizedBox(
              height: 10,
            ),

            // Rest of the stuff idk what they are for
            const Article(),
            SizedBox(
              height: 10,
            ),

            const Divider(
              thickness: 2,
              color: Color(0xFFF5F9FE),
            ),

            SizedBox(
              height: 15,
            ),
            const Article(),
          ], // Children
        ),
      ),
    );
  }
}
