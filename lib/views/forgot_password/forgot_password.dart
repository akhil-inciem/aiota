import 'package:aiota/constants/strings.dart';
import 'package:aiota/views/custom_widgets/custom_back_icon.dart';
import 'package:aiota/views/custom_widgets/custom_button.dart';
import 'package:aiota/views/custom_widgets/custom_textfield.dart';
import 'package:aiota/views/reset_password/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Back Button
              SizedBox(height: 2.h,),
              CustomBackIcon(
                onTap: () => Get.back(),
              ),
              SizedBox(height: 2.h),

              /// Centered Content
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8.h,),

                  /// Illustration Image
                  Image.asset(
                    "assets/images/forgot_password.png", // replace with your asset
                    height: 25.h,
                  ),
                  SizedBox(height: 3.h),

                  /// Title
                  Text(
                    AppStrings.forgotPassword,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color:  Colors.black,
                    ),
                  ),
                  SizedBox(height: 1.5.h),

                  /// Subtitle
                  Text(
                 AppStrings.noWorries,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.5.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: 3.h),

                  /// TextField
                  CustomTextField(
                    controller: emailController ,
                    hintText: "Enter your E-mail",
                  ),
                  SizedBox(height: 1.5.h),

                  /// Note Text
                  Text(
                    AppStrings.emailShare,
                    style: TextStyle(

                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  CustomButton(
                      onPressed: () {

                         Get.to(() => ResetPassword());
                      },
                      text: AppStrings.sendResetLink),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

