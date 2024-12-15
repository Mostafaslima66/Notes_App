import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/read%20notes%20cubit/read_notes_cubit.dart';
import 'package:noteapp/models/Note_model.dart';
import 'package:noteapp/widgets/CustomTextfield.dart';
import 'package:noteapp/widgets/custom_appbar.dart';

class EditNoteviewBody extends StatefulWidget {
  const EditNoteviewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteviewBody> createState() => _EditNoteviewBodyState();
}

class _EditNoteviewBodyState extends State<EditNoteviewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    // Use the noteModel to pre-populate the fields
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
      child: Column(
        children: [
          CustomAppbar(
            title: "Edit Note",
            icon: Icons.done,
            onTap: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              Navigator.pop(context);
               BlocProvider.of<ReadNotesCubit>(context).readallnotes();

            },
          ),
          const SizedBox(height: 50),
          CustomTextfield(
            hint: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextfield(
            hint: widget.noteModel.content,
            maxlines: 6,
            onChanged: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
