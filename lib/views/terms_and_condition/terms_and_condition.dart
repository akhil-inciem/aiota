import 'package:aiota/constants/colors.dart';
import 'package:aiota/constants/strings.dart';
import 'package:aiota/views/custom_widgets/custom_app_bar.dart';
import 'package:aiota/views/custom_widgets/custom_button.dart';
import 'package:aiota/views/member_registration/member_registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';





class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  final List<Map<String, dynamic>> sections = [
    {
      "title": "1. Eligibility Criteria",
      "content":
      "Applicants must hold a recognized Occupational Therapy qualification and comply with AIOTA rules."
    },
    {
      "title": "2.Application Process",
      "content":
      "A non-refundable membership fee is required during application."
    },
    {
      "title": "3.Mandatory Document Submission ",
      "content":
      "All members must adhere to AIOTA's professional code of conduct."
    },
    {
      "title": "4.Fees and Payment  ",
      "content":
      "All members must adhere to AIOTA's professional code of conduct."
    },
    {
      "title": "5.No Refund Policy ",
      "content":
      "All members must adhere to AIOTA's professional code of conduct."
    },
    {
      "title": "6.Verification and Processing  ",
      "content":
      "All members must adhere to AIOTA's professional code of conduct."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFF9FAFB), // light background
      appBar:  CustomAppBar(
        title: AppStrings.termsAndConditions,showDivider: true,),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h,),
                Text(
                  "These Terms and Conditions (“Terms”) govern the application process for individuals seeking Life Membership Certification with the All India Occupational Therapists’ Association (AIOTA) for the first time. By initiating the application and payment process on the AIOTA portal, the applicant agrees to comply with the following:",
                  style: TextStyle(
                    fontSize: 15.3.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 2.h),

                /// Expansion Tiles
                ...sections.map(
                      (section) => Container(
                    margin: EdgeInsets.only(bottom: 2.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        title: Text(
                          section["title"],
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        // Gradient arrow without container
                        trailing: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFF007AFF),
                              const Color(0xFF00C6FF),
                            ],
                          ).createShader(bounds),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        children: [
                          Container(
                            width: double.infinity,
                            // Remove gradient from here - use solid color instead
                            color: Colors.grey[50], // or any other background color you prefer
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: Text(
                                section["content"],
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.black87, // Changed to dark color since background is light
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      text: "Go Back",
                      backgroundColor: Color(0xFFFDADADA), // solid color
                      textColor: Colors.black,
                      width: 24.w,
                      height: 4.5.h,
                      useGradient: false, // 👈 disable gradient
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(width: 3.w),
                    CustomButton(
                      text: "I Agree",
                      textColor: Colors.white,
                      width: 24.w,
                      height: 4.5.h,
                      useGradient: true, // 👈 keep gradient
                      onPressed: () {
                        Get.to(() => MemberRegistration());
                      },
                    ),
                  ],
                )

              ],
            ),

          ),

        ),
      ),
    );
  }
}
