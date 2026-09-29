import 'package:flutter/material.dart';

class Zong extends StatefulWidget {
  const Zong({super.key});

  @override
  State<Zong> createState() => _ZongState();
}

class _ZongState extends State<Zong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notifications, color: Colors.white),
        title: Text("Zong App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        actions: [
          Icon(Icons.refresh, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),


      body: SafeArea(child: Column(
        children: [
          // Black Part
          Expanded(
              flex: 1,
              child: Container(color: Colors.black, margin: EdgeInsets.all(10), child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Upper Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         // LeftSide
                         Container(height: 50, child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Demo Acount", style: TextStyle(color: Colors.white),),
                          Text("RS: 50", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      )),

                         // Right Side
                         Container(height: 50, child: Row(
                           children: [
                             CircleAvatar(
                               radius: 25,
                               backgroundImage: AssetImage("assets/images/img.png",),
                             ),


                             SizedBox(width: 10),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Demo User", style: TextStyle(color: Colors.white),),
                                 Text("0300000000", style: TextStyle(color: Colors.white, fontSize: 20)),
                               ],
                             )
                           ],
                         ),),



                       ],
                      ),
                      SizedBox(height: 20),

                      //Down Button
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ),
              )
              )
          ),



          // White Part
          Expanded(
              flex: 3,
              child: Container())
        ],
      )),
    );
  }
}
