import 'package:Dibadnd/component/widgets/navbar.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter_application_1/view/authentication/sign_up.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_application_1/component/widgets/navbar.dart';
>>>>>>> main
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBarWidget(),
    );
  }
}
