import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}
final List<IconData> settingsIcons = [Icons.person_outline,Icons.info_outline,Icons.notifications_none,Icons.language,Icons.gavel,Icons.dark_mode_outlined,];
final List<String> settingsLabels = [
  'Account',
  'Privacy',
  'Notifications',
  'Language',
  'Legal',
  'Display',
];
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const  Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: const Color(0xFF1A1A1A),
      ),
      body: ListView.builder(physics: NeverScrollableScrollPhysics(),itemCount: settingsLabels.length,itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 5+5,bottom: 5+5),
          child: ListTile(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
              side: BorderSide(width: 1,color: Colors.white54),
            ),
            onTap: () {
              
            },
           leading: Icon(settingsIcons[index],color:Colors.white60),
           title: Text(settingsLabels[index],style:TextStyle(color: Colors.white)),
          ),
        );
      }),
    );
  }
}