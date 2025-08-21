import 'package:aiota/views/custom_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MemberRegistration extends StatefulWidget {
  const MemberRegistration({super.key});

  @override
  State<MemberRegistration> createState() => _MemberRegistrationState();
}

class _MemberRegistrationState extends State<MemberRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(title: 'AIOTA Life Membership Certification –  \n Terms and Conditions',),
    );
  }
}
