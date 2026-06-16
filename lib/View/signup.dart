// ignore_for_file: camel_case_types

import 'package:digital_goldmine/View/checkin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top:false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10+8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing:5,
            children: [
              Row( // 1st row
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('Assets/images/splashlogo.png',height: 100,width: 100,),
                 Text('En/Fr',style:TextStyle(color:Colors.grey,fontSize:15)),
                ],
              ),
            Expanded(
  child: Container(
    width: double.infinity,

    decoration:  BoxDecoration(
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
  stops: [0.0, 0.4], // Holds the gold hue strictly at the top 40% before turning black
)
    ),
        child:Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('SIGN UP',style: TextStyle(color: Colors.white,fontSize: 38,),),
              textandfeild(title: ' Full Name', hint: 'Azaan Saeed', isPassword: false),
              textandfeild(title: ' Email', hint: 'Email@email.com', isPassword: false),
              textandfeild(title: ' Password', hint: 'Enter your password', isPassword: true),
              textandfeild(title: ' Confirm Password', hint: 'Confirm your password', isPassword: true),
              button(text: 'SIGN UP', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF)),
             buttonandicon(text: 'Continue with Google', onPressed: (){}, backgroundColor: Colors.white, icon: null, textcolor: Colors.black),
              buttonandicon(text: 'Sign Up with Apple', onPressed: (){}, backgroundColor: Colors.black, icon: Icons.apple, textcolor: Colors.white),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing:5,
                  children: [
                    Text('Already have an account?',style: TextStyle(color: Colors.white,fontSize: 15),),
                    Text('Login',style: TextStyle(color: Colors.yellow,fontSize: 15),)
                  ],
                ),
              ),
            ]
          ),
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
Widget textandfeild({required String title,required String hint ,required  bool isPassword }){
  return   Column(
                spacing:10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style:TextStyle(color: Colors.white54)),
                  SizedBox(
                    height:50,
                    child: TextField(
                      obscureText: isPassword,
                      decoration :InputDecoration(
                           suffixIcon: isPassword ? Icon(Icons.visibility_off,color: Colors.white54,) : null,
                        hintText: hint,
                        hintStyle: TextStyle(color: Colors.white60,fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white12,width:1),  
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white12,width:1),  
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white12,width:1),  
                        ),
                      ),
                    ),
                  )
                ],
  );
}
Widget buttonandicon({required String text,required VoidCallback onPressed , required Color backgroundColor, required IconData ?icon,required Color textcolor}){
  return Padding(
    padding: const EdgeInsets.only(top:9),
    child: SizedBox(height: 50,width: double.infinity,child: ElevatedButton.icon(style:ElevatedButton.styleFrom(
                     side: BorderSide(color: Colors.white24, width: 1),
                  shape:RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(13),),
                  backgroundColor:backgroundColor,
                
                ),onPressed: onPressed, icon:icon==null?Image.asset('Assets/images/google.png'): Icon(icon,size: 20,color:textcolor), label: Text(text, style: TextStyle(color: textcolor))),),
  );
}