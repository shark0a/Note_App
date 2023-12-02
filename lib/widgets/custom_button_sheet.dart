import 'package:flutter/material.dart';
import 'package:note_app/helper/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: fcolor,
        borderRadius:BorderRadius.circular(8),
      ),
      child: const Center(child: Text('save',style:TextStyle(color: Colors.black,fontSize: 18),)),
    );
  }
}