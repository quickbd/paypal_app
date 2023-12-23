import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String title;
  final bool? secured;
  const CustomField({super.key, required this.title, this.secured});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: secured ?? false,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                  color: Colors.black38
              )
          ),
          focusedBorder : OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                  color: Colors.blueAccent
              )
          ),
          hintText: title
      ),
    );
  }
}
