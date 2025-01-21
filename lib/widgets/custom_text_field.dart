import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(color: Color(0xff62FCD7)),
          border: customBorder(),
          enabledBorder: customBorder(),
          focusedBorder: customBorder(Color(0xff62FCD7))
        ),
      ),
    ) ;
  }

  OutlineInputBorder customBorder([color]) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color:color?? Colors.white)
        );
  }
}