import 'package:aiota/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.border, // ✅ gradient border
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(1.5), // ✅ thickness of gradient border
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          // inner background
          borderRadius: BorderRadius.circular(12,),
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              height: 1.0,
              letterSpacing: 0,
              color: Colors.grey,
            ),
            suffixIcon: suffixIcon,
            border: InputBorder.none, // ✅ remove default Flutter border
            contentPadding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 2.h,
            ),
          ),
        ),
      ),
    );
  }
}
