import 'package:digital_goldmine/View/checkin.dart';
import 'package:digital_goldmine/View/signup.dart';
import 'package:flutter/material.dart';

class Completeprofile extends StatefulWidget {
  const Completeprofile({super.key});

  @override
  State<Completeprofile> createState() => _CompleteprofileState();
}

class _CompleteprofileState extends State<Completeprofile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing : 20,
            children: [
              const SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'En/Fr',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('COMPLETE YOUR', style: TextStyle(color: Colors.white, fontSize: 38)),
                Text('PROFILE', style: TextStyle(color: Colors.white, fontSize: 38)),
              ],),
              Container(
              margin: const EdgeInsets.only(top: 20),
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
                  child:Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      spacing: 13,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Center(child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('Assets/images/a6.png'),
                        ),),
                        Center(child: Text('Alex hales',style: TextStyle(color: Colors.white,fontSize: 22,fontFamily: 'DM Sans'),)),
                        Text('Bio',style: TextStyle(color: Colors.white60,),),
                        Text('This is an Exemplary bio which can be deleted and is used as a placeholder for this app',style: TextStyle(color: Colors.white60,),),
                        button(text: 'Continue', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF)), 
                        buttonandicon(text: 'Edit', onPressed: (){}, backgroundColor: Colors.transparent, icon: Icons.edit, textcolor: Colors.white)   
                      ]
                    ),
                  ),
            )        
            ], // Added closing bracket for Column children
          ),
        ),
      ), // Added closing parenthesis for Column
    );
  }
}