import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubit/add_notes_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddnoteButtonSheet extends StatelessWidget {
  const AddnoteButtonSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubits(),
      child: BlocConsumer<AddNoteCubits, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailur) {
            if (kDebugMode) {
              print('failied ${state.emessage}');
            }
          }
          if (state is AddNoteSucess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SingleChildScrollView(child: AddNoteForm()),
                )),
          );
        },
      ),
    );
  }
}
