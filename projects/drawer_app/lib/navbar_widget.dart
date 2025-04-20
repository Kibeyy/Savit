import 'package:drawer_app/data/notifiers.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});



  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
      return NavigationBar(
         // backgroundColor: Colors.blueGrey,
          onDestinationSelected: (int value) {

              selectedPageNotifier.value = value;


          },
          selectedIndex: selectedPage,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home,), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person,color: Colors.white,), label: 'Profile'),

          ]);
    },);
  }
}


