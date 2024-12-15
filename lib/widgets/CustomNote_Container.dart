import 'package:flutter/material.dart';
import 'package:noteapp/Views/Edit_note_view.dart';
import 'package:noteapp/models/Note_model.dart';

class CustomNoteContainer extends StatelessWidget {
  const CustomNoteContainer({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(noteModel.notecolor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  noteModel.content,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Add delete functionality if needed
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 15),
              child: Text(
                noteModel.date, // Use the formatted date here
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
