import 'package:aiota/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.primaryBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        hintText: 'Enter text',
      ),
    );
  }
}