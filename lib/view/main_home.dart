import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/colors.dart';
import 'package:flutter_application_1/component/widgets/appbar.dart';
import 'package:flutter_application_1/view/categories_screen.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:flutter_application_1/view/notification_screen.dart';
import 'package:flutter_application_1/view/profile_screen.dart';
import 'package:flutter_application_1/view/saved_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  late final List<Widget> pageList = [
    const ProfileScreen(),
    const SavedScreen(),
    const NotificationScreen(),
    const CategoriesScreen(),
    const HomeScreen(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pageList.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          fixedColor: SolidColor.maingreen,
          onTap: _onItemTapped,
          unselectedItemColor: SolidColor.maingery,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/G-icon.svg',
                color: _selectedIndex == 0
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Featured',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/gridview-icon.svg',
                color: _selectedIndex == 1
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/bell-icon.svg',
                color: _selectedIndex == 2
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/heart-icon.svg',
                color: _selectedIndex == 3
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/account-icon.svg',
                color: _selectedIndex == 4
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'My Stuff',
            ),
          ],
        ),
      ),
    );
  }
}
