import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: NoteItem(),
        );
      },
    );
  }
}