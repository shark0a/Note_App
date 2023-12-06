
import 'package:flutter/material.dart';
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
      child: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hintText: 'title',
            maxline: 1,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFiled(
              onSaved: (value) {
                subtitle = value;
              },
              hintText: 'Conetent',
              maxline: 5),
          const SizedBox(
            height: 60,
          ),
          CustomButton(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
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
