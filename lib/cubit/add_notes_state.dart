part of 'add_notes_cubit.dart';

@immutable
sealed class AddNoteState {}

final class CubitsInitial extends AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucess extends AddNoteState {}

class AddNoteFailur extends AddNoteState {
  final String emessage ;
  AddNoteFailur(this.emessage);
}
