import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonname,
      required this.buttoncolor,
      this.ontap});
  final String buttonname;
  final Color buttoncolor;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: buttoncolor,
        ),
        child: Center(
            child: Text(
          buttonname,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        )),
      ),
    );
  }
}
