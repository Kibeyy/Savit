import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Instagram",
            style: TextStyle(
              fontFamily: "Lobster", // Make sure 'Lobster' is added in pubspec.yaml
              fontSize: 28,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.2,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: Colors.red),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.messenger_outline_rounded),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for(int i = 0;i<5;i++)
                    Container(

                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.deepOrange,
                            Colors.red,
                            Colors.pink,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3), // Gradient border thickness
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black, // Inner black border
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3), // Black border thickness
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/img.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ClipOval(
                          child: Image.asset('assets/images/img.jpg',width: 50,height: 50,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Stoneblunts"),
                          Text("Ordinary by AlexWarren")
                        ],
                      ),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                  //SizedBox(height: 10,),
                  Image.asset('assets/images/img.jpg',height: 436,width: double.maxFinite,)


                ],
              ) ,
            )
          ],
        ),
        bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.transparent,

            destinations:[
              NavigationDestination(icon: Icon(Icons.home_filled), label: ''),
              NavigationDestination(icon: Icon(Icons.search), label: ''),
              NavigationDestination(icon: Icon(Icons.add_box_outlined), label: ''),
              NavigationDestination(icon: Icon(Icons.video_library_rounded), label: ''),
              NavigationDestination(
                icon: ClipOval(
                  child: Image.asset(
                    'assets/images/img.jpg',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: '',
              ),


            ]
        ),
      ),
    );
  }
}
