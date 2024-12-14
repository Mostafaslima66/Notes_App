part of 'read_notes_cubit.dart';

@immutable
sealed class ReadNotesState {}

final class ReadNotesInitial extends ReadNotesState {}

final class ReadNotesLoading extends ReadNotesState {}

final class ReadNotesSuccess extends ReadNotesState {
  final List<NoteModel> Notes;

  ReadNotesSuccess(this.Notes);
}

final class ReadNotesFailure extends ReadNotesState {
  final String errormessage;

  ReadNotesFailure(this.errormessage);
}
