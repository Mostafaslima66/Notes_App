import 'package:flutter/material.dart';
import 'package:noteapp/Views/Notes_view.dart';

void main() {
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
      routes: {NotesView.id: (context) => const NotesView()},
    );
  }
}
