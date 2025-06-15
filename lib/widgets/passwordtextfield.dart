import 'package:flutter/material.dart';
import '../theme/color.dart';
class PasswordTextField extends StatelessWidget {
  final TextEditingController passwordcontroller;
  const PasswordTextField ({super.key, required this.passwordcontroller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:passwordcontroller ,
      decoration: InputDecoration(
        labelText: 'password',
        prefixIcon: Icon(Icons.password),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: AppColor.border,
            width: 1.0,
          ),
        ),
      ),
    );
  }}