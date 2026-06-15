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
            spacing:6,
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
              const Text('Learning, Earning and Connecting',style: TextStyle(color:Colors.white60),),
              const SizedBox(height: 15,),
              Image.asset('Assets/images/Statisticscard.png'),
              const SizedBox(height: 15,),
               button(text: 'Login', onPressed: () {}, backgroundColor: const Color(0x42FFFFFF)),
               button(text: 'Sign Up', onPressed: () {}, backgroundColor: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }
}
Widget button({required String text,required VoidCallback onPressed , required Color backgroundColor}){
  return Padding(
    padding: const EdgeInsets.only(top:9),
    child: SizedBox(height: 50,width: double.infinity,child: ElevatedButton(style:ElevatedButton.styleFrom(
                     side: BorderSide(color: Colors.white24, width: 1),
                  shape:RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(13),),
                  backgroundColor:backgroundColor,
                
                ),onPressed: onPressed, child: Text(text,style: TextStyle(color: Colors.white)),),),
  );
}
Widget buttonandicon({required String text,required VoidCallback onPressed , required Color backgroundColor, required IconData icon}){
  return ElevatedButton.icon(onPressed: onPressed, icon: Icon(icon), label: Text(text));

}