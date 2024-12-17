import 'package:flutter/material.dart';
import 'package:sagar_school/career.dart';
import 'package:sagar_school/main.dart';
import 'package:sagar_school/newpage.dart';
import 'package:sagar_school/login.dart';
import 'package:sagar_school/contact.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 170, // Increase the height as needed
            width: 250, // Keep the width or adjust as needed
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child:  Image.asset(
                  'assets/Screenshot 2024-12-05 221752.png', // Set the new width for the image
                  height: 150,
                  width: 200, // Optional: Adjust how the image fits in the container
                ),
            ),
          ),
          ListTile(
            title: Text('HOME'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: 
              (context) => MyHomePage()));
            },
          ),
          ListTile(
            title: Text('ABOUT US'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:
                (context) => Newpage() ));
            },
          ),
          const ExpansionTile(title: Text('CAMPUS'),
          children:<Widget> [
            ListTile(title: Text('Layout Plan')),
            ListTile(title: Text('Infracture')),
            ListTile(title: Text('Facilities')),
            ListTile(title: Text('Daily Schedule')),
            ListTile(title: Text('Virtual Tour')),
          ],
          ),
          const ExpansionTile(title: Text('ACADEMICS'),
          children:<Widget> [
            ListTile(title: Text('Curruculum')),
            ListTile(title: Text('Pedagogy')),
            ListTile(title: Text('Board Results')),
          ],
          ),
          const ExpansionTile(title: Text('BEYOND ACADEMICS'),
          children:<Widget> [
            ListTile(title: Text('CCA Activities')),
            ListTile(title: Text('Sports')),
            ListTile(title: Text('Houses')),
            ListTile(title: Text('Clubs & Societies')),
            ListTile(title: Text('Trips ans Excursion')),
            ListTile(title: Text('Round Square')),
            ListTile(title: Text('IAYP')),
            ListTile(title: Text('IPSC')),
            ListTile(title: Text('AFS')),
          ],),
          const ExpansionTile(title: Text('POSTAL'),
          children:<Widget> [
            ListTile(title: Text('Overview')),
            ListTile(title: Text('Middle School(V To VIII)')),
            ListTile(title: Text('Senior School(IX To XII)')),
            ListTile(title: Text('Daily Schedule')),
            ListTile(title: Text('Virtual Tour')),
          ],
          ),
          const ListTile(title: Text('PHOTO GALLERY')),
          ExpansionTile(title: Text("EXHIBITS"),
          children:<Widget>[
            ListTile(title: Text('Publication')),
            ListTile(title: Text('Newsletter')),
          ],
          ),
          const ListTile(title: Text('ADMISSION')),
          ListTile(title: Text('CAREER'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Career()));
          },),
          ListTile(
            title: Text('LOGIN'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          ListTile(title: Text('CONTACT US'),
          onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: 
              (context) => ContactUs()));
            },
          ),
        ],
      ),
    );
  }
}