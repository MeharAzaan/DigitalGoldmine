import 'package:digital_goldmine/View/checkin.dart';
import 'package:flutter/material.dart';

class SelectAvatar extends StatefulWidget {
  const SelectAvatar({super.key});

  @override
  State<SelectAvatar> createState() => _SelectAvatarState();
}

class _SelectAvatarState extends State<SelectAvatar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing : 20,
            children: [
              const SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'En/Fr',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('CPMPLETE YOUR', style: TextStyle(color: Colors.white, fontSize: 38)),
                Text('AVATAR', style: TextStyle(color: Colors.white, fontSize: 38)),
              ],),
              Center(child: Image(image: AssetImage('Assets/images/Dropzone.png'))),
              Expanded(child: GridView.builder(itemCount: 12,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 15,crossAxisSpacing: 15) , itemBuilder: (context,index){
                return CircleAvatar(        
                  backgroundImage: AssetImage('Assets/images/a${index+1}.png'),              
                );
              })),
              button(text: 'Continue', onPressed: (){}, backgroundColor: const Color(0x42FFFFFF))
            ], // Added closing bracket for Column children
          ),
        ),
      ), // Added closing parenthesis for Column
    );
  }
}