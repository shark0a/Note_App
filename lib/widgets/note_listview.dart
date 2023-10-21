import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: const Note_Item(),
        );
      },
    );
  }
}
