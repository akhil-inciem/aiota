import 'package:aiota/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final IconData? leadingIcon;
  final IconData? suffixIcon;
  final VoidCallback? onLeadingTap;
  final VoidCallback? onSuffixTap;
  final bool showDivider;

  const CustomAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.suffixIcon,
    this.onLeadingTap,
    this.onSuffixTap,
    this.showDivider = false, // ✅ only show when needed
  });

  @override
  Size get preferredSize => Size.fromHeight(25.h);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 3.h),
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: Colors.black,
            title: title != null
                ? Text(
              title!,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            )
                : null,
            leading: leadingIcon != null
                ? IconButton(
              icon: Icon(leadingIcon, color: AppColors.textColor),
              onPressed: onLeadingTap,
            )
                : null,
            actions: [
              if (suffixIcon != null)
                IconButton(
                  icon: Icon(suffixIcon, color: AppColors.textColor),
                  onPressed: onSuffixTap,
                ),
            ],
          ),
          if (showDivider) ...[
            SizedBox(height: 3),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Container(
                height: 0.5,
                decoration: BoxDecoration(
                  gradient: AppColors.divider,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}






