import 'package:flutter/material.dart';
class NotificationUi extends StatefulWidget {
  const NotificationUi({super.key});

  @override
  State<NotificationUi> createState() => _NotificationUiState();
}
final List<String> drawerLabels = [
  'Courses',
  'Mentorship',
  'Wallet',
  'Community',
  'Livestream Reminders',
];
class _NotificationUiState extends State<NotificationUi> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const  Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: const Color(0xFF1A1A1A),
      ),
      body: ListView.builder(physics: NeverScrollableScrollPhysics(),itemCount: drawerLabels.length,itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 5+5,bottom: 5+5),
          child: ListTile(
            
            
            onTap: () {
              
            },
          trailing: Switch(value: false, onChanged: (dede){}),
           title: Text(drawerLabels[index],style:TextStyle(color: Colors.white)),
          ),
        );
      }),
    );
  }
}