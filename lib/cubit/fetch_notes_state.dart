part of 'fetch_notes_cubit.dart';

@immutable
abstract class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NotesCubitLoad extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccess(this.notes);
}

class NotesCubitFailure extends NotesCubitState {
  final String emessage;
  NotesCubitFailure(this.emessage);
}
