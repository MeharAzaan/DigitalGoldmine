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
        title: Text('Azaan Saeed',style: TextStyle(color: Colors.white),), 
        centerTitle: true,
      
      ),
    );
  }
}