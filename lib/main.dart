import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Views/Edit_note_view.dart';
import 'package:noteapp/Views/Notes_view.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/Note_model.dart';

void main() async {
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.initFlutter();
  await Hive.openBox(knotebox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'Poppins',
            ),
      ),
      initialRoute: NotesView.id,
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
    );
  }
}
