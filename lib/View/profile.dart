import 'package:digital_goldmine/View/checkin.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const  Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: const Color(0xFF1A1A1A),
        title: Text('Azaan Saeed',style: TextStyle(color: Colors.white,fontSize: 18),), 
        actions: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: const Icon(Icons.ring_volume_rounded,color: Colors.white54,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: const Icon(Icons.settings,color: Colors.white54,),
          )
        ],
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( // 1st children
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('Assets/images/a5.png'),
                ),
                Row(
                 spacing: 25,
                  children: [
                    Column(
                      children: [
                        Text('1100',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                        Text('Followers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      ],
                    ),
                       Column(
                      children: [
                          Text('1100',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),), 
                          Text('Following',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      ],
                    ),
                       Column(
                      children: [
                          Text('1100',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                           Text('Cources',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    const SizedBox(width: 3,),
                  ],
                )
              ],
            ),
            Text('Alex hales',style: TextStyle(color: Colors.white),),
            Text('This is an Exemplary bio which can be deleted and is used as a placeholder for this app',style: TextStyle(
              color: Colors.white54
            ),),
            button(text: 'Follow', onPressed: (){}, backgroundColor: const Color(0x42FFBD00)),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(13),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                color: Colors.white38, // Border color
                width: 1.0,         // Border width
              ),
                shape:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                color: Color(0xFF171512), 
                gradient: LinearGradient(
                     begin: Alignment.topCenter,
                     end: Alignment.bottomLeft,
                        colors: [
                        Color(0xFF221F17), // The warm, dark olive-gold tint at the top
                         Color(0xFF131313), // Deep, soft black for the rest of the screen
            ],
            stops: [0.0, 0.4], // Holds the gold ue strictly at the top 40% before turning black
            )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  Text('Cources Completed',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text('28',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25),)
                    ],
                  )
                ],
              
              ),
              ),
              Text('Cources',style: TextStyle(color: Colors.white60,fontSize: 24,fontWeight: FontWeight.w500),),
              Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                color: Colors.white38, // Border color
                width: 1.0,         // Border width
              ),
                shape:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                color: Colors.transparent, 
            ),
            child: Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('Assets/images/a8.png',height: 70,width: 70,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text('Creator Pro',style: TextStyle(color: Colors.white70,fontSize: 12,fontWeight: FontWeight.w500),),
                    Text('Create your digital Empire.',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),softWrap: true,),
                    Text('Friends',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),
                    Text('20+ friends enrolled',style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w400,fontSize: 14),),
                  ],
                )
              ],
            ),
              ),
          ],

        ),
      ) ,
    );
  }
}