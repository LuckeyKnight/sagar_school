import 'package:flutter/material.dart';
import 'spalsh_screen.dart';
import 'first_slider.dart';
import 'package:sagar_school/image_sider_2.dart';
import 'login.dart';
import 'image_slider.dart';
import 'mydrawer.dart';
import 'ourmotto.dart';
import 'package:sagar_school/footer.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  // Create a GlobalKey for the Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the key to the Scaffold
      appBar: 
      PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Center(
            child: Text("Admission Open 2025-26", 
              style: TextStyle(fontSize: 16.0, color: Colors.white)),
          ),
          backgroundColor: const Color.fromARGB(255, 223, 23, 73),
        ),
      ),

      drawer: CustomDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                  Container(
              margin: const EdgeInsets.only(right: 110),
                    child:GestureDetector(
                    onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                    },
                    child: Image.asset(
                      'assets/Screenshot 2024-12-05 221752.png',
                      width: 250,
                      height: 100,
                    ),
                  ),
                  ),
                  Positioned(
                    top: 2,
                    right: 5,
                    child: IconButton(
                      iconSize: 30,
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    icon: Icon(Icons.login),
                    )
                  )
              ],
            ),
            Container(
              height: 200,
              child: Slider1(),
            ),
            Image.asset('assets/our.png'),
            Container(
              height: 160,
              width: 300,
              child: ImageSlider(),
            ),
            Motto(),
            Container(
              margin: EdgeInsets.only(right: 120),
              child: Image.asset('assets/awards.jpg', width: 230),
            ),
            Container(
              child: ImageSlider2(),
            ),
            Footer(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}