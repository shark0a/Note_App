import 'package:flutter/material.dart';
import 'package:note_app/widgets/create_note%20_items.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
