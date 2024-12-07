import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Notes",
          style: TextStyle(fontSize: 30),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color:const Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(10)),
          child:const Center(
              child: Icon(
            Icons.search,
            size: 28,
          )),
        )
      ],
    );
  }
}
