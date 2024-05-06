import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.validat,
    this.maxlines,
    required this.controller,
    required this.textInputType,
    this.reaonly = false,
    required this.hint,
    required this.PreIcon,
    this.cursorcolor = Colors.black,
    this.Suffixicon,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final TextInputType textInputType;
  final String hint;
  final Widget PreIcon;
  final Color cursorcolor;
  final bool reaonly;
  final IconButton? Suffixicon;
  final Function()? validat;
  final int? maxlines;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {

        },
        obscureText: obscureText,
        readOnly: reaonly,
        cursorColor: cursorcolor,
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: PreIcon,
          suffixIcon: Suffixicon,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink.shade500),
            borderRadius: BorderRadius.circular(10),),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink.shade500),
            borderRadius: BorderRadius.circular(10),),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink.shade500),
            borderRadius: BorderRadius.circular(10),),
        ),
      ),
    );
  }
}