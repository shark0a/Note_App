import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class AddnoteButtonSheet extends StatelessWidget {
  const AddnoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 16,),
          CustomTextFiled(),
        ],
      ),
    );
  }
}
