import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button_sheet.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class AddnoteButtonSheet extends StatelessWidget {
  const
   AddnoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: const [
          SizedBox(height: 16,),
          CustomTextFiled(hintText: 'Title',maxline: 1,),
          SizedBox(height: 30,),
          CustomTextFiled(hintText: 'Conetent', maxline: 5),
          SizedBox(height: 60,),
          
          CustomButton(),
        ],
      ),
    );
  }
}
