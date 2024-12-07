import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Notesview_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "Notes_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor:const Color(0xff57EDDB),
        shape:const CircleBorder(),
        child:const Center(
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 26,
          ),
        ),
      ),
      body: const NotesviewBody(),
    );
  }
}
