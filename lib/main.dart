import 'package:aiota/views/custom_widgets/custom_button.dart';
import 'package:aiota/views/login_screen/login_screen.dart';
import 'package:aiota/views/splash%20screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: false, fontFamily: 'Poppins'),
          home: SplashScreen(

      ),
        );
      },
    );
  }
}
