import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Views/Edit_note_view.dart';
import 'package:noteapp/Views/Notes_view.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubit_observer/cubit_observer.dart';
import 'package:noteapp/models/Note_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter()); // Register the adapter first
  await Hive.openBox<NoteModel>(knotebox); // Then open the box

  Bloc.observer = CubitObserver();
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
