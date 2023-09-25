import 'package:Dibadnd/component/api_constant.dart';
import 'package:Dibadnd/services/dio_service.dart';
import 'package:flutter/material.dart';
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
