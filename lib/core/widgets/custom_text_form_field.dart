import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.validator,
    this.isPassword = false,
    this.icon,
    this.suffixIconOnPressed,
  });

  final TextEditingController controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validator;
  final bool isPassword;
  final IconData? icon;
  final VoidCallback? suffixIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.primary,
      validator: validator,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: IconButton(
          onPressed: suffixIconOnPressed,
          icon: Icon(
            icon,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
