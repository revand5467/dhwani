//
import 'package:dhwani/screens/search.dart';
import 'package:dhwani/screens/speech_to_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../widgets/tile_widget.dart';
import '../controller/bottom_bar.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

final Bottom controller = Get.put(Bottom());

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20,
        title: const Text('Home Page'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return tileWidget(index);
        }),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  onPressed: () {
                    Get.to(Example());
                  },
                ),
                GButton(
                  icon: LineIcons.book,
                  text: 'Likes',
                ),
                GButton(
                  onPressed: () {
                    Get.to(Search());
                  },
                  icon: LineIcons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: LineIcons.microphone,
                  text: 'Speak',
                  onPressed: () {
                    Get.to(Speech());
                  },
                ),
              ],
              selectedIndex: controller.selectedIndex,
              onTabChange: (index) {
                setState(() {
                  //_selectedIndex = index;
                  controller.updateIndex(index);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
