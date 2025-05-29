import 'package:flutter/material.dart';

void main() {
  runApp(const Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0B1014),brightness: Brightness.dark)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20,),
            Icon(Icons.search),
            SizedBox(width: 20,),
            Icon(Icons.more_vert),
            SizedBox(width: 5,),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xFF0B1014),
            destinations: [
              NavigationDestination(icon: Icon(Icons.message), label: 'Chats'),
              NavigationDestination(icon: Icon(Icons.update), label: 'Updates'),
              NavigationDestination(icon: Icon(Icons.people_alt_outlined), label: 'Communities'),
              NavigationDestination(icon: Icon(Icons.call), label: 'Calls')
            ],
        ),
        body: Container(

          padding: EdgeInsets.only(top: 20,left: 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 15,bottom: 15),
                  child: Divider(color: Colors.grey,thickness: 1,)
              ),
              for (int i = 0; i < 6; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 19),
                  child: Row(

                    children: [
                      ClipOval(
                          child: Image.asset('assets/images/me.jpg',width: 60,height: 60,fit: BoxFit.cover,)
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Collins',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text('Samples messages sent')
                        ],
                      ),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text('7:41 PM',style: TextStyle(fontStyle: FontStyle.italic),)
                      ),
                      SizedBox(height: 20,)



                    ],


                  ),
                )



            ],
          ),
        ),
      ),
    );
  }
}
