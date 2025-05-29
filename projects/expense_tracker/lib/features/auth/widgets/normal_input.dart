import 'package:flutter/material.dart';

class NormalInput extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const NormalInput({
    super.key,
    required this.hintText,
    required this.controller
  });

  @override
  State<NormalInput> createState() => _NormalInputState();
}

class _NormalInputState extends State<NormalInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      // style: TextStyle(
      //   color: Colors.black87,
      //   fontSize: 16,
      // ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          // Change this line to use a different color
          borderSide: BorderSide(color: Colors.white, width: 1.5), // Changed from Colors.deepPurple to Colors.blue
        ),
      ),
    );
  }
}