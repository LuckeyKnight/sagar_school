import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 213, 211, 211),
      child:  
    Column(
      children: [
        Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft ,
              child:
              Column(
              children: [
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.centerLeft ,
                  child: Text('Address', style: TextStyle(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 223, 23, 73),fontSize: 20)),
                ),
                SizedBox(height: 30,),
                Container(alignment: Alignment.centerLeft ,
                child: Text('The Sagar School',) ,),
                Container(
                  alignment: Alignment.centerLeft ,
                  child: Row(
                    children: [
                      Icon(Icons.card_giftcard_rounded),
                      Text('Village Baghor, Tehsi Tijara, District Alwar-3014011'),
                    ],
                  ),
                ),
                Container(alignment: Alignment.centerLeft ,
                child:Text('Rajasthan, National Capital Region, India'),
                ),

                Container(
                  alignment: Alignment.centerLeft ,
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      Text('+91 998338811, +91 9983308801-04',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft ,
                  child: Row(
                    children: [
                      Icon(Icons.email),
                      Text('addmission@thesagarschool.org',style: TextStyle(color: Colors.green),),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft ,
                  child: Row(
                    children: [
                      Icon(Icons.email),
                      Text('info@thesagarschool.org',style: TextStyle(color: Colors.green),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(children: [
                  Icon(Icons.location_on),
                  Text('Get Direction',style: TextStyle(color: Colors.green),),
                ],),
                Container(alignment: Alignment.centerLeft,
                  child: Image.asset('assets/qr.png',width: 100,height: 100,),),
                  SizedBox(height: 30,),
                Container(
                  alignment: Alignment.centerLeft ,
                  child: Text('Useful Links',style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 223, 23, 73),),),
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Awards  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Career  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Fees Structure  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Layout Plan  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,)
                      
                    ],),
                    SizedBox(height: 9,),
                    
                  ]
                ),
                Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Mandatory Public Disclosure ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Photo Gallery  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      
                      SizedBox(width: 7,)
                      
                    ],),
                    SizedBox(height: 9,),
                    
                  ]
                ),
                Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Publiction  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Testimonials  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,)
                      
                    ],),
                    SizedBox(height: 9,),
                    
                  ]
                ),
                Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Transfer Certificate  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Virtual Tour  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,),
                      Container(
                        height: 20,
                        color: Colors.black,
                        child: Center(child: Text('  Weelky Newletter  ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                      ),
                      SizedBox(width: 7,)
                      
                    ],),
                    SizedBox(height: 30,),
                    
                  ]
                ),
              ]
              )
            ),
            Column(children: [
              Container(
              color: Colors.black,
              child: Center(
                child: Text('@2024 | All Right Reserved.',style: TextStyle(color: Colors.white),),
              ),
            ),
              Container(
              color: Colors.black,
              child: Center(
                child: Text('Designed And Maintained By: The Department Of ITC - The Sagar School',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),

            ],),
            
          ]
      )
    );
  }
}