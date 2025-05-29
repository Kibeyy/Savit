import 'package:flutter/material.dart';

class HotelItem extends StatelessWidget {
  final String hotel_image_link;
  final String hotel_name;
  final String hotel_desc;


  const HotelItem({
    super.key,
    required this.hotel_image_link,
    required this.hotel_name,
    required this.hotel_desc

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 260,width: 220,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(hotel_image_link,width: 200,height: 180,),
              //hotel name
              FittedBox(child: Text(hotel_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
              //hotel desc
              Text( hotel_desc,style: TextStyle(fontWeight: FontWeight.bold)),
              //price time n rating
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //price
                  Text("1.99\$",),
                  SizedBox(width: 15,),
                  //time taken
                  Text("20-30 mins",),
                  SizedBox(width: 15,),
                  //rating
                  Text("9.2",)

                ],
              )
            ],


          ),
        ),
      ),
    );
  }
}
