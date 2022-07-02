import 'package:flutter/material.dart';
import 'package:learning_app/screens/courses.dart';
import 'package:learning_app/screens/my_courses.dart';
import 'package:learning_app/shared/themes/app_colors.dart';
import 'package:learning_app/shared/themes/app_texts.dart';
import 'package:learning_app/shared/widgets/appbar_button.dart';
import 'package:learning_app/shared/widgets/course_card.dart';
import 'package:learning_app/shared/widgets/custom_row.dart';
import 'package:learning_app/shared/widgets/home_appbar.dart';
import 'package:learning_app/shared/widgets/mentors_small_card.dart';
import 'package:learning_app/shared/widgets/search_input.dart';

import '../shared/widgets/bookmarks_appbar.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List _pages = [
    Courses(),
    Text("OPS NADA AQUI"),
    MyCourses(),
    Text("OPS NADA AQUI"),
  ];

  static const List _appbars = [
    HomeAppBar(),
    HomeAppBar(),
    BookMarksAppBar(),
    HomeAppBar(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: _appbars.elementAt(_selectedIndex),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 24,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.button,
        unselectedItemColor: Colors.grey,
        backgroundColor: AppColors.background,
        onTap: _onItemSelected,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined,),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined,),
            label: "Bookmarks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}