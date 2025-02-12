import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/cubits/read%20notes%20cubit/read_notes_cubit.dart';
import 'package:noteapp/widgets/Add_note_form.dart';

class AddnoteBottomsheet extends StatelessWidget {
  const AddnoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
             BlocProvider.of<ReadNotesCubit>(context).readallnotes();
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Note added successfully!")),
            );
          } else if (state is AddNoteFailure) {
            print("failed${state.errormessage}");
            // Show error message on failure
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Failed to add note: ${state.errormessage}"),
              ),
            );
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading?true:false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context)
                    .viewInsets
                    .bottom, // Adjust for keyboard
              ),
              child: const SingleChildScrollView(
                child: Addnoteform(),
              ),
            ),
          );
        },
      ),
    );
  }
}
