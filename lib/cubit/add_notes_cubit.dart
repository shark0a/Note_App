import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_notes_state.dart';

class CubitsCubit extends Cubit<AddNoteState> {
  CubitsCubit() : super(CubitsInitial());
}
