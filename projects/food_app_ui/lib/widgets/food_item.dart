import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const FoodItem({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100, height: 120,
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () {

            },
            splashColor: Colors.lightBlue,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Adjust this value to control roundness
              ),
              child: SizedBox(
                width: 80, // Fixed width for all images
                height: 80, // Fixed height for all images
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover, // This makes the image cover the available space
                ),
              ),
            ),
          ),
          //SizedBox(height: 5,),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis, // Handles long text
          )
        ],
      ),
    );
  }
}