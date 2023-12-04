import 'package:flutter/material.dart';
import 'package:note_app/helper/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: fcolor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        )),
      ),
    );
  }
}
