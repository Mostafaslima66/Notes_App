import 'package:flutter/material.dart';
import 'package:noteapp/models/Note_model.dart';
import 'package:noteapp/widgets/Edit_Noteview_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "Edit_Note_view";

  @override
  Widget build(BuildContext context) {
    // Retrieve the noteModel argument passed from CustomNoteContainer
    final NoteModel noteModel = ModalRoute.of(context)!.settings.arguments as NoteModel;

    return Scaffold(
      body: EditNoteviewBody(noteModel: noteModel), // Pass the noteModel to the body
    );
  }
}

