import 'package:flutter/material.dart';
import 'package:sagar_school/main.dart';
import 'package:sagar_school/mydrawer.dart';
import 'aboutUs.dart';

class Newpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      endDrawer: CustomDrawer()
      ,
      body: SingleChildScrollView(
        child: Column(
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
                  Container(
                    child: AboutUs(),
                  )
          ]
        ),
      )
    );
  }
}