import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Add_note_form.dart';


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
      child: const SingleChildScrollView(
        child: Addnoteform(),
      ),
    );
  }
}


