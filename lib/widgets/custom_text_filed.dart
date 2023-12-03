import 'package:flutter/material.dart';
import 'package:note_app/helper/const.dart';
class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText, required this.maxline});
  final String hintText;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: fcolor,
       maxLines: maxline,
      decoration: InputDecoration(
      hintText:hintText,
      hintStyle: const TextStyle(color: fcolor),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(fcolor),
      
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color??Colors.white),

      

    );
  }
}