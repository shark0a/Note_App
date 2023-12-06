import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/helper/const.dart';
import 'package:note_app/models/note_models.dart';

part 'add_notes_state.dart';

class CubitsCubit extends Cubit<AddNoteState> {
  CubitsCubit() : super(CubitsInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(knotesbox);
      emit(AddNoteSucess());
      await notebox.add(note);
    } on Exception catch (e) {
      AddNoteFailur(e.toString());
    }
  }
}
