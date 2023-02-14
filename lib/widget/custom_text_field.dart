import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String lableText;
  final IconData iconData;
  final bool withPassword;
  final TextInputType KeyInput;
  final TextEditingController controllers;

  CustomTextField(
      {this.hint,
      this.iconData,
      this.withPassword,
      this.lableText,
      this.KeyInput,
      this.controllers});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6),
        child: TextField(
          controller: widget.controllers,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Color(0xffF9C7B5)),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Color(0xffF9C7B5)),
                  borderRadius: BorderRadius.circular(10)),
              labelText: widget.lableText,
              hintText: widget.hint,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              suffixIcon: widget.withPassword
                  ? GestureDetector(
                      child: Icon(showPassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onTap: click)
                  : Icon(widget.iconData)),
          obscureText: widget.withPassword == true ? showPassword : false,
          keyboardType: widget.KeyInput,
        ));
  }

  void click() {
    setState(() {
      showPassword = !showPassword;
    });
  }
}
