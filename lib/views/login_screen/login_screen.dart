import 'package:aiota/constants/colors.dart';
import 'package:aiota/constants/strings.dart';
import 'package:aiota/controllers/auth_controller.dart';
import 'package:aiota/views/custom_widgets/custom_button.dart';
import 'package:aiota/views/custom_widgets/custom_textfield.dart';
import 'package:aiota/views/forgot_password/forgot_password.dart';
import 'package:aiota/views/terms_and_condition/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final authController = Get.put(AuthController()); // put controller in widget


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/aiota_login.png', // put your image path herewidth: 30.w,
                  width: 36.w,
                ),
                SizedBox(height: 3.h,),
                Text(
               AppStrings.aIOTA,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    // color: Colors.black
                  ),
                ),

                SizedBox(height: 2.h),

                // Subtitle
                Text(
                AppStrings.memberLogin,
                  style: TextStyle(

                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black

                  ),
                ),
              ],
            ),

            SizedBox(height: 9.h), // Reduced from 5.h to 2.h

            // Form Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Username Field
                Text(
                  AppStrings.username,
                  style: TextStyle(

                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                ),
                SizedBox(height:1.h),
                CustomTextField(
                  controller: _usernameController,
                  hintText: "Enter your user name",
                ),

                SizedBox(height: 2.5.h),

                // Password Field
                Text(
                  AppStrings.password,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 1.h),
                Obx(() => CustomTextField(
                  controller: _passwordController,
                  hintText: "Enter your Password",
                  obscureText: !authController.isPasswordVisible.value,
                  suffixIcon: IconButton(
                    icon: ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [
                          Color(0xFF1E40AF), // Dark Blue
                          Color(0xFF06B6D4), // Cyan
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds),
                      child: Icon(
                        authController.isPasswordVisible.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off,
                        color: Colors.white, // required for ShaderMask
                      ),
                    ),
                    onPressed: () => authController.togglePasswordVisibility(),
                  ),
                ),
                ),


                //SizedBox(height: 1.h),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => ForgotPassword());

                    },
                    child: const Text(
                      AppStrings.forgotPassword,
                      style: TextStyle(
                        fontWeight: FontWeight.w400, // Regular weight
                        fontSize: 12, // 12px
                        height: 1.0, // Line height = 100%
                        letterSpacing: 0, // No extra spacing
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 2.h),
                CustomButton(
                    text: 'sign in'),

                //SizedBox(height: 1.h),

                // Register Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dont,
                      style: TextStyle(
                        fontWeight: FontWeight.w500, // Regular weight
                        fontSize: 14.sp, // 12px
                        height: 1.0, // Line height = 100%
                        letterSpacing: 0, // No extra spacing
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() =>TermsAndCondition());
                      },
                      child:  Text(
                        AppStrings.register,
                        style: TextStyle(
                          fontWeight: FontWeight.w600, // Regular weight
                          fontSize: 15.sp, // 12px
                          height: 1.0, // Line height = 100%
                          letterSpacing: 0, // No extra spacing
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}