import 'package:flutter/material.dart';
import 'package:sagar_school/footer.dart';
import 'package:sagar_school/main.dart';
import 'package:sagar_school/mydrawer.dart';

class ContactUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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

      body:SingleChildScrollView(
        child: Column(
          children:<Widget> [
            Container(
                    margin: const EdgeInsets.only(right: 110),
                    child:GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                      },
                      child: 
                      Image.asset(
                      'assets/Screenshot 2024-12-05 221752.png',
                      width: 250,
                      height: 100,
                    ),
                    ),
                  ),
            Container(
              child: Image.asset('assets/contact.jpg', fit: BoxFit.cover,),
              height: 200,
            ),
            Container(
              height: 30,
              color: const Color.fromARGB(255, 181, 175, 175),
              child: const Stack(
                children: <Widget>[
                  Positioned(
                    left: 20,
                    child:
                      Icon(Icons.home),
                      ),
                  Positioned(left: 50,child: Icon(Icons.arrow_forward)),
                  Positioned(left: 80,child: Text('Contact US',style: TextStyle(fontWeight: FontWeight.bold),) )
                ]
              ),
            ),
            Container(child: Image.asset('assets/cont.jpg'),),
            
            Footer()
          ],
        ),
      )
    );
  }
}