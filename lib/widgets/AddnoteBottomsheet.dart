import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/widgets/CustomTextfield.dart';
import 'package:noteapp/widgets/custom_Button.dart';

class AddnoteBottomsheet extends StatelessWidget {
  const AddnoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom, // Adjust for keyboard
      ),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 25,
            ),
            CustomTextfield(hint: "Title"),
            SizedBox(
              height: 16,
            ),
            CustomTextfield(
              hint: "Content",
              maxlines: 6,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              ButtonName: "Add",
              Buttoncolor: Kprimarycolor,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
