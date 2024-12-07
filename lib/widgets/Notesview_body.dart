import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Note_Listview.dart';
import 'package:noteapp/widgets/custom_appbar.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
      child: Column(
        children: [
          CustomAppbar(),
          Expanded(child: NoteListview())
        ],
      ),
    );
  }
}


