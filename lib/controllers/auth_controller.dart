import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:get/get.dart';

class AuthController extends GetxController {
  // reactive password visibility
  var isPasswordVisible = false.obs;
  var isConfirmPasswordVisible=false.obs;

  // toggle function
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
