import 'package:digital_goldmine/View/checkin.dart';
import 'package:flutter/material.dart';

class Twoof2 extends StatefulWidget {
  const Twoof2({super.key});

  @override
  State<Twoof2> createState() => _Twoof2State();
}

class _Twoof2State extends State<Twoof2> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top:false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50,left: 18,right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing:10,
            children: [
              Row( // 1st row
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('Assets/images/twoof2.png',),
                 Text('En/Fr',style:TextStyle(color:Colors.grey,fontSize:15)),
                ],
              ),
              const SizedBox(height: 10,),
              Image.asset('Assets/images/firstimage.png'),
              const SizedBox(height: 10,),
              Text('MANAGE YOUR EARNINGS, TRANSFER COINS, AND TRACK YOUR FINANCIAL GROWTH.',style: TextStyle(color: Colors.white,fontSize: 30),),
              const SizedBox(height: 10,),
              button(text: 'Next', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF) ),
            ],
          ),
        ),
      ),
    );
  }
}