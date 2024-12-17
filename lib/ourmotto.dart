import 'package:flutter/material.dart';

class Motto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 660,
      width: 400,
      color: Color.fromARGB(250, 8, 90, 4),
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Text('OUR MOTTO',style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Image.asset('assets/moto.jpg'),
          ),
          const Text("ज्ञान की ओर (Towards Knowledge)embodies our commitment to fostering a lifelong love for learning. We strive for academic excellence, encourage curiosity and innovation, and promote holistic development.Inclusivity, diversity, and ethical behavior are at the heart of our community. We emphasize collaborative learning, community engagement, and global awareness, preparing students to become responsible global citizens.Through a dynamic curriculum, professional development, and robust support systems, we ensure that every student is equipped with the knowledge, skills, and values needed to thrive in an ever-changing world",
          textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 16, // Text size
                fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}