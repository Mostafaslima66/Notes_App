import 'package:flutter/material.dart';
import 'package:noteapp/widgets/CustomTextfield.dart';
import 'package:noteapp/widgets/custom_appbar.dart';

class EditNoteviewBody extends StatelessWidget {
  const EditNoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
      child: Column(
        children: [
          CustomAppbar(title: "Edit Note", icon: Icons.done),
          SizedBox(height: 50,),
          CustomTextfield(hint:"Title" ),
          SizedBox(height: 16,),
          CustomTextfield(hint: "Content",maxlines: 6,)
        ],
      ),
    );
  }
}
