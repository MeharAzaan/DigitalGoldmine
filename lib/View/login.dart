import 'package:digital_goldmine/View/checkin.dart';
import 'package:digital_goldmine/View/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              const Text('HI THERE',style: TextStyle(color: Colors.white,fontSize: 38,),),
              const Text('WELCOME BACK',style: TextStyle(color: Colors.white,fontSize: 38,),),
              const Text('  Grow Digitally with us ',style: TextStyle(color:Colors.white60),),
            Expanded(
  child: Container(
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
          padding: const EdgeInsets.all(17),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 38,),),
              textandfeild(title: ' Email', hint: 'Email@email.com', isPassword: false),
              textandfeild(title: ' Password', hint: 'Enter your password', isPassword: true),
              button(text: 'LOGIN', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF)),
             buttonandicon(text: 'Continue with Google', onPressed: (){}, backgroundColor: Colors.white, icon: null, textcolor: Colors.black),
              buttonandicon(text: 'Sign Up with Apple', onPressed: (){}, backgroundColor: Colors.black, icon: Icons.apple, textcolor: Colors.white),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing:5,
                  children: [
                    Text('Don\'t have an account?',style: TextStyle(color: Colors.white,fontSize: 15),),
                    Text('Sign Up',style: TextStyle(color: Colors.yellow,fontSize: 15),)
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