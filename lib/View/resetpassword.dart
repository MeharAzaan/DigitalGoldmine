import 'package:digital_goldmine/View/checkin.dart';
import 'package:digital_goldmine/View/signup.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              const Text('RESET YOUR',style: TextStyle(color: Colors.white,fontSize: 38,),),
              const Text('PASSWORD',style: TextStyle(color: Colors.white,fontSize: 38,),),
              const Text(' Please Enter New Password ',style: TextStyle(color:Colors.white60),),
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
                    padding: const EdgeInsets.all(19),
                    child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        textandfeild(title: 'New Password', hint: 'Enter new password', isPassword: true),
                         textandfeild(title: 'Confirm Password', hint: 'Confirm new password', isPassword: true),
                        button(text: 'RESET PASSWORD', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF)),    
                      ]
                    ),
                  ),
            )          
            ],
          ),
        ),
      ),
    );
  }
}