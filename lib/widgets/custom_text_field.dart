import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxline = 1, this.onSaved});
  final void Function(String?)? onSaved;
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "value is required";
        } else {
          return null;
        }
      },
      maxLines: maxline,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xff62FCD7)),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(Color(0xff62FCD7))),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
