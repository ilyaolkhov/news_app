import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/Theme.dart';
import 'package:news_app/feature/HomeScreen/HomeScreen.dart';
import 'package:news_app/feature/ProfileScreen/ProfileScreen.dart';
import 'package:news_app/feature/book_mark_screen/BookMark.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75))
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            selectedItemColor: purplePrimary,
            unselectedItemColor: greyPrimary,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('lib/assets/svg/estate.svg',color: _currentIndex == 0 ?purplePrimary:greyPrimary , height: 24,), label: 'Home'),

              BottomNavigationBarItem(icon: SvgPicture.asset('lib/assets/svg/bookmark.svg', color: _currentIndex == 1 ?purplePrimary:greyPrimary , height: 24,), label: 'Bookmark'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('lib/assets/svg/user.svg', color: _currentIndex == 2 ?purplePrimary:greyPrimary , height: 24,),label: 'Profile')
            ],
          ),
        ),
      ),
      body: Center(child: bodys.elementAt(_currentIndex)),
    );
  }
}

List<Widget> bodys = [
  HomeScreen(),
  BookMarkScreen(),
  ProfileScreen()
];
