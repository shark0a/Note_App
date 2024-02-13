import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_models.dart';
import 'package:note_app/widgets/color_list_view.dart';
import 'package:note_app/widgets/custom_button_sheet.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onchange: (value) {
              title = value;
            },
            hintText: 'title',
            maxline: 1,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFiled(
              onchange: (value) {
                subtitle = value;
              },
              hintText: 'Conetent',
              maxline: 5),
          const SizedBox(
            height: 32,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  var currentDate = DateTime.now();

                  var formattedCurrentDate =
                      DateFormat('dd-mm-yyyy').format(currentDate);
                  var notmodel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubits>(context).addNote(notmodel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              title: 'save'),
        ],
      ),
    );
  }
}
