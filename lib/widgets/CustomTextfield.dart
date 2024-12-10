import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    this.maxlines,
    this.onSaved,
  });

  final String hint;
  final int? maxlines;
  final void Function(String?)? onSaved; // Callback for saving the value

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       onSaved: onSaved, // Assign the onSaved callback
        validator: (value) {
    if (value?.isEmpty ?? true) {
      return "Field is required";
    }
    return null; // No error
  },
      cursorColor: kprimarycolor,
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
            color: kprimarycolor,
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
        ),
        focusedErrorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
        ) ,
        hintText: hint,
        hintStyle: const TextStyle(color: kprimarycolor),
      ),
      style: const TextStyle(color: Colors.white),
     
    );
  }
}