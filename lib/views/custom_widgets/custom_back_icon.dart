import 'package:aiota/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomBackIcon extends StatelessWidget {
  final VoidCallback onTap;

  const CustomBackIcon({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: Colors.white, // background circle
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
          )
        ],
      ),
      child: GestureDetector(
        onTap: onTap,
        child: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
         colors: AppColors.primaryGradient,
            end: Alignment.topRight,
            begin: Alignment.topLeft,

          ).createShader(bounds),
          child:  Icon(
            Icons.arrow_back_ios_new,
            size: 20.sp,
            color: Colors.white, // important! icon must be white for gradient mask
          ),
        ),
      ),
    );
  }
}
