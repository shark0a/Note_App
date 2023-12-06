import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/helper/const.dart';
import 'package:note_app/models/note_models.dart';
import 'package:note_app/views/notes_view.dart';

void main()  async{
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NoteView(),
    );
  }
}
