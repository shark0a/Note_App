import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/helper/const.dart';
import 'package:note_app/models/note_models.dart';

part 'add_notes_state.dart';

class AddNoteCubits extends Cubit<AddNoteState> {
  AddNoteCubits() : super(CubitsInitial());
 Color color =Colors.amber;
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      note.color=color.value;
      emit(AddNoteLoading());
      var notesbox = Hive.box<NoteModel>(knotesbox);
      await notesbox.add(note);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNoteFailur(e.toString()));
    }
  }
}
