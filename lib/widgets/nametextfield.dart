import 'package:flutter/material.dart';
import '../theme/color.dart';
class NameTextField extends StatelessWidget {
  final TextEditingController nameController;
  const NameTextField ({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return  TextField(

      controller:nameController,

      decoration: InputDecoration(
        labelText: 'Name',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: AppColor.border,
            width: 1.0,
          ),
        ),
      ),
    );
  }}