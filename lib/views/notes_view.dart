import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/fetch_notes_cubit.dart';
import 'package:note_app/widgets/add_note_buttom_sheet.dart';
import 'package:note_app/widgets/note_listview.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          title: const Text("Notes"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddnoteButtonSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const Column(
          children: [
            Expanded(
              child: NoteListView(),
            ),
          ],
        ),
      ),
    );
  }
}
