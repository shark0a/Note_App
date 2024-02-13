import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/fetch_notes_cubit.dart';
import 'package:note_app/models/note_models.dart';
import 'package:note_app/widgets/custom_button_sheet.dart';
import 'package:note_app/widgets/custom_text_filed.dart';
import 'package:note_app/widgets/edit_note_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.done))
          ],
          title: const Text("Edit Note View"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextFiled(
                  onchange: (value) {
                    widget.note.title = value ?? widget.note.title;
                  },
                  hintText: widget.note.title,
                  controller: TextEditingController(text: widget.note.title),
                  maxline: 1),
              const SizedBox(
                height: 32,
              ),
              EditNoteColorsList(
                note: widget.note,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFiled(
                
                  onchange: (value) {
                    widget.note.subTitle = value ?? widget.note.subTitle;
                  },
                  hintText: widget.note.subTitle,
                  controller: TextEditingController(text: widget.note.subTitle),
                  maxline: 5),
              const SizedBox(
                height: 60,
              ),
              CustomButton(
                onTap: () {
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                title: 'save',
              ),
            ],
          ),
        ));
  }
}
