import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/read%20notes%20cubit/read_notes_cubit.dart';
import 'package:noteapp/models/Note_model.dart';
import 'package:noteapp/widgets/CustomNote_Container.dart';

class NoteListview extends StatelessWidget {
  const NoteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<ReadNotesCubit>(context).notes??[];
        return Padding(
          padding:const  EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount:notes.length ,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 8),
                child: CustomNoteContainer(noteModel: notes[index],),
              );
            },
          ),
        );
      },
    );
  }
}
