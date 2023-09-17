import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/colors.dart';
import 'package:flutter_application_1/controller/bottom_navigation_controller.dart';
import 'package:flutter_application_1/view/categories_screen.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:flutter_application_1/view/notification_screen.dart';
import 'package:flutter_application_1/view/profile_screen.dart';
import 'package:flutter_application_1/view/saved_screen.dart';
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
    const ProfileScreen(),
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
                'assets/svg/G-icon.svg',
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