import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_listview.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        title: const Text("Notes"),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
