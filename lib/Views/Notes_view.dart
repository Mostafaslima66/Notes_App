import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/widgets/AddnoteBottomsheet.dart';
import 'package:noteapp/widgets/Notesview_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "Notes_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (BuildContext context) {
              return AddnoteBottomsheet();
            },
          );
        },
        backgroundColor: kprimarycolor,
        shape: const CircleBorder(),
        child: const Center(
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
