import 'package:flutter/material.dart';
import 'package:noteapp/widgets/CustomNote_Container.dart';

class NoteListview extends StatelessWidget {
  const NoteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: ( context,  index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustomNoteContainer(),
          );
        },
      ),
    );
  }
}