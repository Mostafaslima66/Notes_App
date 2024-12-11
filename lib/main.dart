import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Views/Edit_note_view.dart';
import 'package:noteapp/Views/Notes_view.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubit_observer/cubit_observer.dart';
import 'package:noteapp/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/Note_model.dart';

void main() async {
  Bloc.observer = CubitObserver();
  // Initialize Hive and register adapters
 
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(knotebox);
 Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),

        // Add more BlocProviders as needed
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
