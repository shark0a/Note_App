import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button_sheet.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.done))],
          title: const Text("Edit Note View"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView(
            children: const [
              SizedBox(
                height: 32,
              ),
              CustomTextFiled(hintText: 'Title', maxline: 1),
              SizedBox(
                height: 32,
              ),
              CustomTextFiled(hintText: 'content', maxline: 5),
              SizedBox(
                height: 60,
              ),
              CustomButton(
                title: 'save',
              ),
            ],
          ),
        ));
  }
}
