import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/api_constant.dart';
import 'package:flutter_application_1/services/dio_service.dart';
import 'package:get/state_manager.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  TextEditingController nameControler = TextEditingController();
  //TextEditingController confirmPasswordControler = TextEditingController();

  signup() async {
    Map<String, dynamic> map = {
      'name': nameControler.text,
      'email': emailController.text,
      'password': passwordControler,
      //'password_confirmation': confirmPasswordControler.text,
    };
    var response =
        await DioService().postMethod(map, ApiUrlConstant.postRegister);
    print(response);
  }
}
