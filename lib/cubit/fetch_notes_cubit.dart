import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/helper/const.dart';
import 'package:note_app/models/note_models.dart';

part 'fetch_notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
    List<NoteModel>? notes;
  fetchAllNotes() {

    var notesbox = Hive.box<NoteModel>(knotesbox);
    notes = notesbox.values.toList();
    emit(NotesSuccess());
  }
}
