
import 'package:aiota/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor; // Optional: can still be used as fallback
  final Color? textColor;
  final Icon? icon;
  final bool isGuestButton;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final bool isEnabled;

  const CustomButton({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.isGuestButton = false,
    this.onPressed,
    this.width,
    this.height,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors:
       AppColors.primaryGradient
    );

    final disabledGradient = LinearGradient(
      colors: [
        (backgroundColor ?? AppColors.primaryColor).withOpacity(0.4),
        (backgroundColor ?? AppColors.primaryColor).withOpacity(0.3),
      ],
    );

    final effectiveTextColor = isEnabled
        ? (textColor ?? Colors.white)
        : (textColor ?? Colors.white).withOpacity(0.6);

    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 5.h,
        decoration: BoxDecoration(
          gradient: isEnabled ? defaultGradient : disabledGradient,
          borderRadius: BorderRadius.circular(14.sp),
          border: isGuestButton
              ? Border.all(color: effectiveTextColor, width: 1)
              : Border.all(color: Colors.transparent),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  icon!,
                  SizedBox(width: 0.5.h),
                ],
                Text(
                  text,
                  style: TextStyle(
                    color: effectiveTextColor,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
