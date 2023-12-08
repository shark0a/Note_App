import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/helper/const.dart';
import 'package:note_app/models/note_models.dart';

part 'fetch_notes_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  fetchAllNotes(NoteModel note) async {
    try {
      var notesbox = Hive.box<NoteModel>(knotesbox);

      emit(NotesCubitSuccess(notesbox.values.toList()));
    } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
