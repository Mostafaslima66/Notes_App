import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/Note_model.dart';

part 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Future addnote(NoteModel notemodel) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(knotebox);
      await notebox.add(notemodel);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}








//creat states     (Done)
//creat cubit      (Done)
//creat function   (Done)
//provide cubit    (Done)
//integrate cubit  (Done)
//trigger cubit