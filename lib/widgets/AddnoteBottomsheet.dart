import 'package:flutter/material.dart';
import 'package:noteapp/widgets/CustomTextfield.dart';

class AddnoteBottomsheet extends StatelessWidget {
  const AddnoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextfield(hint: "Title"),
           SizedBox(
            height: 16,
          ),
          CustomTextfield(hint: "Content",maxlines: 6,)
        ],
      ),
    );
  }
}
