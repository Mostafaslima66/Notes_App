import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Edit_Noteview_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "Edit_Note_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteviewBody(),
    );
  }
}
