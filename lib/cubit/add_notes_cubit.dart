import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_models.dart';

part 'add_notes_state.dart';

class CubitsCubit extends Cubit<AddNoteState> {
  CubitsCubit() : super(CubitsInitial());

addNote(NoteModel note){
  
}
}
