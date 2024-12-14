import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/Note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  readallnotes() {
    try {
      var notebox = Hive.box<NoteModel>(knotebox);
      List<NoteModel> notes = notebox.values.toList();
      emit(ReadNotesSuccess(notes));
    } catch (e) {
      emit(ReadNotesFailure(e.toString()));
    }
  }
}
