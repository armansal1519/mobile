
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/course/CoursesScreen.dart';
import 'package:mobile/screens/goal/GoalScreen.dart';
import 'package:mobile/screens/my_course/MyCourseScreen.dart';
import 'package:mobile/screens/news/NewsScreen.dart';
import 'package:mobile/screens/profile/ProfileScreen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class UserRootScreen extends StatefulWidget {
  const UserRootScreen({Key? key, required this.initialIndex}) : super(key: key);

  final int initialIndex;

  @override
  _UserRootScreenState createState() => _UserRootScreenState();
}

class _UserRootScreenState extends State<UserRootScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            CoursesScreen(),
            MyCourseScreen(),
            ProfileScreen(),
            GoalScreen(),
            NewsScreen()

          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blueAccent,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.library_books,
              ),
              title: const Text("Courses"),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.menu_book,
              ),
              title: const Text("My courses"),

            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),

            ),
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.emoji_events,
              ),
              title: const Text("Goals"),

            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.newspaper),
              title: const Text("News"),

            ),
          ],
          onTap: (index) {
            Beamer.of(context).update(
              configuration: RouteInformation(
                location: index == 0 ? '/?tab=books' : '/?tab=articles',
              ),
              rebuild: false,
            );
            setState(() => _currentIndex = index);
          },
        ));
  }
}
