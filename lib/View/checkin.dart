import 'package:flutter/material.dart';

class Checkin extends StatefulWidget {
  const Checkin({super.key});

  @override
  State<Checkin> createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top:false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10+8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing:8,
            children: [
              Row( // 1st row
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('Assets/images/splashlogo.png',height: 100,width: 100,),
                 Text('En/Fr',style:TextStyle(color:Colors.grey,fontSize:15)),
                ],
              ),
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black54,
                ),
                child: Text('Trusted Partners',style:TextStyle(color:Colors.white)),
                onPressed: () {
                  // Handle check-in logic here
                },
              ),
            const Text('WELCOME TO',style: TextStyle(color: Colors.white,fontSize: 38,),),
           const Text('DIGITAL GOLDMINE',style: TextStyle(color: Colors.white,fontSize: 38,),),
              const Text('Learning, Earning and Connecting',s,),
            ],
          ),
        ),
      ),
    );
  }
}