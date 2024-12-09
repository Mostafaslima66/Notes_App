import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: const Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Icon(
            icon,
            size: 28,
          )),
        )
      ],
    );
  }
}
