import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, this.maxlines});
  final String hint;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
      maxLines: maxlines,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Kprimarycolor,
            width: 2.0,
          ),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Kprimarycolor),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
