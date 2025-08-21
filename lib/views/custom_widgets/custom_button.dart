
import 'package:aiota/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor; // For solid color button
  final Color? textColor;
  final Icon? icon;
  final bool isGuestButton;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final bool isEnabled;
  final bool useGradient; // NEW: to decide gradient or solid color

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
    this.useGradient = true, // by default uses gradient
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: AppColors.primaryGradient,
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
          color: !useGradient ? backgroundColor : null, // solid color
          gradient: useGradient
              ? (isEnabled ? defaultGradient : disabledGradient)
              : null,
          borderRadius: BorderRadius.circular(13.sp),
          border: isGuestButton
              ? Border.all(color: effectiveTextColor, width: 1)
              : Border.all(color: Colors.transparent),
        ),
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
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  height: 1.0,
                  letterSpacing: 0,
                  color: effectiveTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

