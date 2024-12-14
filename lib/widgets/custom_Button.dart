import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonname,
      required this.buttoncolor,
      this.ontap,
      required this.isloading});
  final String buttonname;
  final Color buttoncolor;
  final bool isloading;
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
            child: isloading
                ? const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : Text(
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
