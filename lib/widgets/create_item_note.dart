import 'package:flutter/material.dart';
import 'package:note_app/models/note_models.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.notes,
  });
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(notes.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: TextStyle(color: Color(0xFF000000), fontSize: 26),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  notes.subTitle,
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                },
                icon: const Icon(Icons.delete),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("${notes.date}",
                  style: TextStyle(color: Colors.black.withOpacity(.4))),
            ),
          ],
        ),
      ),
    );
  }
}
