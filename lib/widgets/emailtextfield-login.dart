import 'package:flutter/material.dart';
import '../theme/color.dart';
class EmailTextField extends StatelessWidget {
  final TextEditingController emailcontroller;
  const EmailTextField({super.key, required this.emailcontroller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailcontroller,
      decoration: InputDecoration(
        labelText: 'Email',
        prefixIcon: Icon(Icons.email),
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