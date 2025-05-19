import 'package:expense_tracker/data/value_notifiers/value_notifier.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const PasswordInput({
    super.key,
    required this.hintText,
    required this.controller
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isPasswordVisible, builder: (context, passwordVisible, child) {
      return TextField(
        obscureText: passwordVisible,

        controller: widget.controller,

        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed:() {
            //toggle pass visibility
            isPasswordVisible.value = !isPasswordVisible.value;
          } , icon:passwordVisible?Icon(Icons.visibility):Icon(Icons.visibility_off)) ,
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
            borderSide: BorderSide(color: Colors.white, width: 1.5),
          ),
        ),
      );

    },);
  }
}