import 'package:flutter/material.dart';

class LocationIcon extends StatelessWidget {
  const LocationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //todo action here
      },
      child: Container(
        width: 30,height: 30,

        decoration: BoxDecoration(
            color: Colors.lightBlue[100],
          shape: BoxShape.circle
        ),
        child: Icon(Icons.location_pin,color: Colors.blueAccent,),
      ),
    );
  }
}
