import 'package:flutter/material.dart';
import 'package:note_app/helper/const.dart';
class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: fcolor,
      decoration: InputDecoration(
      hintText:'title',
      hintStyle: TextStyle(color: fcolor),
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