import 'package:flutter/material.dart';
import 'package:sagar_school/footer.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
      height: 500, // Set the height of the container
      child: Stack(
        children: [
          Image.asset(
            'assets/abus.jpg',
            fit: BoxFit.cover, // Use BoxFit.cover to cover the entire container
            height: 500,
          ),
          const Positioned(
            top: 13, // Position the text from the bottom
            left: 130, // Position the text from the left
            child: Text(
              'About Us',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 28, // Text size
                fontWeight: FontWeight.bold, // Text weight// Optional: background color for better visibility
              ),
            ),
          ),
          const Positioned(
            top: 60.0,
            left:20,
            right:20,
            bottom: 10,
            child:Text('UNPARALLELED INFRASTRUCTURE-A GREEN OASIS IN NCR for classes V to XII. The Sagar School, situated on a scenic 160-acre campus, is a thriving CBSE co- educational boarding school.Conveniently located just a two-hour drive from Delhi airport and a four-and-a- half-hour drive from Jaipur, the school boasts an undulating green landscape adorned with over 2500 flowering trees, 10,000 shrubs, and fruit orchards. With world-class amenities and an impressive teacher-student ratio of 1:8, our school accommodates students from over 22 states across India, as well as from countries such as Bangladesh, Nepal, Nigeria, Russia, South Korea, and the UAE. Students from classes V to XII thrive in this vibrant educational environment.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 16, // Text size
                fontWeight: FontWeight.bold),
            ),
            ),
        ],
      ),
    ),
    SizedBox(height: 40,),
    Container(child: Image.asset('assets/founder.jpg'),),
    Footer()
    ],);
  }
}