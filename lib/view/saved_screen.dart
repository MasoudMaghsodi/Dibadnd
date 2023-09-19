import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/widgets/appbar.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SimpleAppBar(title: 'Saved Deals'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
              width: 90,
              child: SvgPicture.asset('assets/svg/like-icon.svg',
                  color: Colors.black38),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "You haven't added any deals",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Tap the heart icon on any deal to\n    add it into ypur saved deals!",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  //Get.to(HomeScreen());
                },
                child: Text('BROWSE'))
          ],
        ),
      ),
    );
  }
}
