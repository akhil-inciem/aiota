import 'package:aiota/constants/colors.dart';
import 'package:aiota/views/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Get.off(() => const LoginScreen());
      // 👆 replaces the splash screen with LoginScreen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.primaryGradient,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/aiota_logo.png', // your logo
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}
