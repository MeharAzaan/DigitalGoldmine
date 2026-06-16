import 'package:digital_goldmine/View/checkin.dart';
import 'package:digital_goldmine/View/signup.dart';
import 'package:flutter/material.dart';

class SetUpprofile extends StatefulWidget {
  const SetUpprofile({super.key});

  @override
  State<SetUpprofile> createState() => _SetUpprofileState();
}

class _SetUpprofileState extends State<SetUpprofile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top:false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10+8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing:5,
            children: [
              Row( // 1st row
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('Assets/images/splashlogo.png',height: 100,width: 100,),
                 Text('En/Fr',style:TextStyle(color:Colors.grey,fontSize:15)),
                ],
              ),
              const Text('SETUP YOUR ',style: TextStyle(color: Colors.white,fontSize: 38,),),
              const Text('PROFILE',style: TextStyle(color: Colors.white,fontSize: 38,),),      
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                color: Colors.white38, // Border color
                width: 1.0,         // Border width
              ),
                shape:BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  
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
                  child:Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      textandfeild(title: ' Your name', hint: 'Azaan', isPassword: false),
                      textandfeild(title: ' User Name', hint: 'Master', isPassword: false),
                       textandfeild(title:  ' Bio', hint: 'Azaan Saeed', isPassword: false),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                         Text('150 characters',style: TextStyle(color: Colors.white60,fontSize: 12),),
                        ]
                       ),
                         button(text: 'Continue', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF)),
                    ]
                  ),
            )          
            ],
          ),
        ),
      ),
    );
  }
}