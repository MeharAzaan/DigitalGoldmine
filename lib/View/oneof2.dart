import 'package:digital_goldmine/View/checkin.dart';
import 'package:digital_goldmine/View/signup.dart';
import 'package:flutter/material.dart';

class Oneof2 extends StatefulWidget {
  const Oneof2({super.key});

  @override
  State<Oneof2> createState() => _Oneof2State();
}

class _Oneof2State extends State<Oneof2> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top:false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing:10,
            children: [
              Row( // 1st row
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('Assets/images/oneof2.png',),
                 Text('En/Fr',style:TextStyle(color:Colors.grey,fontSize:15)),
                ],
              ),
              Image.asset('Assets/images/secondimage.png'),
              const SizedBox(height: 10,),
              Text('JOIN A COMMUNITY OF LEARNERS & EARNERS BUILDING THEIR DIGITAL EMPIRE',style: TextStyle(color: Colors.white,fontSize: 30),),
              const SizedBox(height: 10,),
              button(text: 'Next', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF) ),
            ],
          ),
        ),
      ),
    );
  }
}