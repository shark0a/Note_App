part of 'fetch_notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

// class NotesLoad extends NotesState {}

class NotesSuccess extends NotesState {}

// class NotesFailure extends NotesState {
//   final String emessage;
//   NotesFailure(this.emessage);
// }
