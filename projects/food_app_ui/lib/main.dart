import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/food_item.dart';
import 'package:food_app_ui/widgets/hotel_item.dart';
import 'package:food_app_ui/widgets/location_icon.dart';
import 'package:food_app_ui/widgets/offer_widget.dart';
import 'package:food_app_ui/widgets/see_all_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,brightness: Brightness.dark)
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon: LocationIcon()),
        title: FittedBox(
          child: Text("Munchner Waisenhaus",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 20),
          child: Column(

            mainAxisSize: MainAxisSize.max,

            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodItem(imagePath: 'assets/images/alchohol.png', title: "Alchohol"),
                    FoodItem(imagePath: 'assets/images/make up.png', title: "Make up"),
                    FoodItem(imagePath: 'assets/images/pills.png', title: "Medicine"),
                    FoodItem(imagePath: 'assets/images/sushi.png', title: "Food"),
                    FoodItem(imagePath: 'assets/images/groceries.png', title: "Groceries")

                  ],
                ),
              ),
              SizedBox(height: 10,),
              OfferWidget(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dinner near you",style: TextStyle(fontWeight: FontWeight.bold),),
                  SeeAllButton()

                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HotelItem(
                        hotel_image_link: 'assets/images/kfc.png',
                        hotel_name: "KFC",
                        hotel_desc: "It's finger lickin' good"
                    ),
                    HotelItem(
                        hotel_image_link: 'assets/images/dominosnbg.png',
                        hotel_name: "Dominos",
                        hotel_desc: "Get the door it's dominos"
                    ),
                    HotelItem(
                        hotel_image_link: 'assets/images/creamyinn.png',
                        hotel_name: "Creammy Inn",
                        hotel_desc: "One scoop is never enough"
                    )
                  ],
                ),
              )


            ],
          ),
        ),
      )
      ,
      bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.location_city),
                label: "Discovery"),
            NavigationDestination(
                icon: Icon(Icons.restaurant),
                label: "Restaurant"),
            NavigationDestination(
                icon: Icon(Icons.store),
                label: "Stores"),
            NavigationDestination(
                icon: Icon(Icons.search),
                label: "Search"),
            NavigationDestination(
                icon: Icon(Icons.person),
                label: "Profile")
          ]),
    );
  }
}

