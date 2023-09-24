import 'package:Dibadnd/component/colors.dart';
import 'package:Dibadnd/controller/bottom_navigation_controller.dart';
import 'package:Dibadnd/view/categories_screen.dart';
import 'package:Dibadnd/view/home_screen.dart';
import 'package:Dibadnd/view/notification_screen.dart';
import 'package:Dibadnd/view/profile_screen.dart';
import 'package:Dibadnd/view/saved_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomBarWidget extends StatelessWidget {
  BottomBarWidget({super.key});
  final BottomNavBarController controller = Get.put(BottomNavBarController());

  final List<Widget> pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const NotificationScreen(),
    const SavedScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          fixedColor: SolidColor.maingreen,
          unselectedItemColor: SolidColor.maingery,
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/D-icon.svg',
                color: controller.currentIndex.value == 0
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Featured',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/gridview-icon.svg',
                color: controller.currentIndex.value == 1
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/bell-icon.svg',
                color: controller.currentIndex.value == 2
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/heart-icon.svg',
                color: controller.currentIndex.value == 3
                    ? SolidColor.maingreen
                    : SolidColor.maingery,
                height: 24,
              ),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/account-icon.svg',
                color: controller.currentIndex.value == 4
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
