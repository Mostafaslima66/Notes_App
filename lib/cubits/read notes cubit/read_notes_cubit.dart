import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/models/Note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubitCubit extends Cubit<ReadNotesState> {
  ReadNotesCubitCubit() : super(ReadNotesInitial());
}
