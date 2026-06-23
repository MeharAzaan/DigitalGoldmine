import 'package:digital_goldmine/View/checkin.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
            children: [
              const SizedBox(height: 10,),
             Row( // 1st row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/a7.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Azaan Saeed',style:TextStyle(color: Colors.white)),
                        Text('Seller pro',style:TextStyle(color: Colors.yellow)),
                      ],
                    ), 
                  ],
                ),
                Row(
                  spacing: 8,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: BoxBorder.all(color: Colors.white60,width: 1)
                      ),
                      child: const Icon(Icons.settings,color: Colors.white70,)),
                    Container(
                       padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: BoxBorder.all(color: Colors.white60,width: 1)
                      ),
                      child: const Icon(Icons.notifications,color: Colors.white70,)),
                  ],
                )
              ],
             ), // 1st child end
             const SizedBox(height: 5,),
             Text('WELCOME BACK AZAAN!',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),),
             Container( 
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFFE4A900),
               borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentGeometry.topRight,
                    child: Text('Current Balance',style: TextStyle(color: const Color(0xFF272727)),)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DG Coins',style: TextStyle(color: Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2600',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:40),),
                             Padding(
                               padding: const EdgeInsets.only(top: 8.0),
                               child: Text('↑ 12.5%',style: TextStyle(color: const Color(0xFF6552FE),fontWeight: FontWeight.bold,fontSize:16),),
                             ),
                          ],
                        )
                      ],
                    )
                ],
              ),
             ),
            Row(
             spacing: 15,
              children: [
                Expanded(child: button(text: 'WithDraw', onPressed: (){}, backgroundColor: const Color(0xFF505050))),
                Expanded(child: button(text: 'Deposit', onPressed: (){}, backgroundColor: Colors.transparent))
              ],
            ),
            Text('Find best course for you',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 30),),
             Text('We have more than 90+ courses',style: TextStyle(color: Colors.white54,fontSize: 16),),
             TextField(
              decoration: InputDecoration(
                hintText: 'Search course, topic, mentor...',
                prefixIcon:  Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white30),
            
                )
              ),
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your Progress',style: TextStyle(color: const Color(0x91FFFFFF),fontSize:22),),
                 Text('View All',style: TextStyle(color: const Color(0x91FFFFFF),fontSize:22,decoration: TextDecoration.underline,decorationThickness: 2.0,),),
            
              ],
             ),
            Cource(),
           
            ],// main columnn end 
                  ),
          ),
        ),
      ));
  }
}
Widget Cource(){
  return  Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 1,color: Colors.white30)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
             Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('Assets/images/book.png'),
                Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create your first program',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:17),),
                     Text('58/68 Videos',style: TextStyle(color: Colors.white,fontSize:15),)
                  ],
                ),

              ],
             ),
               LinearProgressIndicator(value: 0.85, minHeight: 8.0, color: Colors.amber, backgroundColor: Colors.white, borderRadius: BorderRadius.circular(10.0)),
              Text('Cource Completed 85% ',style: TextStyle(color: Colors.white,fontSize:13),)
              ],

            ),
           );
}