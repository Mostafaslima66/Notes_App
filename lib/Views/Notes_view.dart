import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Notesview_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "Notes_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesviewBody(),
    );
  }
}
