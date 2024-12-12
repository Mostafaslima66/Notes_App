import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/Note_model.dart';
import 'package:noteapp/widgets/CustomTextfield.dart';
import 'package:noteapp/widgets/custom_Button.dart';

class Addnoteform extends StatefulWidget {
  const Addnoteform({
    super.key,
  });

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomTextfield(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            hint: "Content",
            maxlines: 6,
            onSaved: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var notemodel = NoteModel(
                    title: title!,
                    content: content!,
                    date: DateTime.now().toString(),
                    notecolor: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            buttonname: "Add",
            buttoncolor: kprimarycolor,
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
