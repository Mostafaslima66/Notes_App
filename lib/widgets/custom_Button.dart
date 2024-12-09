import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.ButtonName, required this.Buttoncolor});
  final String ButtonName;
  final Color Buttoncolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Buttoncolor,
        ),
        child: Center(
            child: Text(
          ButtonName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        )),
      ),
    );
  }
}
