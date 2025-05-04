import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,height: 100,
      child: Card(
        shape: RoundedRectangleBorder(),

      ),
    );
  }
}
