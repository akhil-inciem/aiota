import 'package:aiota/views/custom_widgets/custom_back_icon.dart';
import 'package:aiota/views/custom_widgets/custom_button.dart';
import 'package:aiota/views/custom_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController newPasswordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
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
                    SizedBox(height: 6.h,),
            
                    /// Illustration Image
                    Image.asset(
                      "assets/images/reset.png", // replace with your asset
                      height: 24.h,
                    ),
                    SizedBox(height: 3.5.h),
            
                    /// Title
                    Text(
                      "Reset Your Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 1.5.h),
            
                    /// Subtitle
                    Text(
                      "Enter a strong new password and confirm it.",
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Username Field
                        Text(
                          'New Password',
                          style: TextStyle(

                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height:1.h),
                        CustomTextField(
                          controller: newPasswordController,
                          hintText: "Enter your Password",
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
                                _isConfirmPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off,
                                color: Colors.white, // required (ShaderMask applies gradient here)
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _isConfirmPasswordVisible= !_isConfirmPasswordVisible;
                              });
                            },
                          ),

                        ),
            
                        SizedBox(height: 2.5.h),
            
                        // Password Field
                        Text(
                          'Confirm Password',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 1.h),
                        CustomTextField(
                          controller: confirmPasswordController,
                          hintText: "Enter your Password",
                          obscureText: !_isPasswordVisible,
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
                                _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off,
                                color: Colors.white, // required (ShaderMask applies gradient here)
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),




                        SizedBox(height: 4.h),
                        CustomButton(
                            text: 'Reset Password'),
            

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
