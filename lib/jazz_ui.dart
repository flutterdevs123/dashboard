import 'package:flutter/material.dart';

class JazzUi extends StatelessWidget{
  const JazzUi({super.key});

  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Column(

            children: [
              // App Bar
              Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 6),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        color: Colors.red,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left :18.0),
                              child: Icon(Icons.notification_important,
                              color: Colors.white,),
                            ),
                           SizedBox(width: 100,),
                            Text("Jazz World",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                            ),),
                            SizedBox(width: 30,),
                            Icon(Icons.refresh,
                            color: Colors.white,),
                            SizedBox(width: 20,),
                            Icon(Icons.search,color: Colors.white,),
                            SizedBox(width: 20,),
                            Icon(Icons.menu,
                            color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,
                      right: 10),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 170,
                            color: Color(0xFF1C1C1C),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22.0),
                                    child: Text("Demo Balance",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white
                                        ),),
                                  ),

                                    SizedBox(height: 5,),
                                    Text("Rs  100",
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.white
                                      ),)

                                  ],
                                ),
                                SizedBox(width: 80,),
                                Row(
                                  children: [
                                    Icon(Icons.account_circle,
                                      color: Colors.white,
                                      size: 50,),
                                    SizedBox(width: 3,),

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Demo User",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                        ),),
                                        SizedBox(height: 4,),
                                        Text("03330000231",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            color: Colors.white
                                          ),)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: -15,
                              right: 30,
                              left: 30,
                              child: Container(
                            height: 45,
                            width: 30,
                            color: Colors.red,
                            child: Center(
                              child: Text("Tap to Recharge",
                              style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
            SizedBox(height: 30,),

            //
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Text("Remaining User",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15
                  ),),
                ),
                SizedBox(width: 210,),
                Text("View more",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),)
              ],
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.bolt),
                                    Text("DATA",style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 90 ,
                              width: 90,
                              child: CircularProgressIndicator(
                                strokeCap: StrokeCap.round,
                                value: 0.9,
                                strokeWidth: 5,
                              ),
                            ),
                            Column(
                              mainAxisSize : MainAxisSize.min,
                              children: [
                                Text("900",
                                  style: TextStyle(
                                      color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 3,),
                                Text("MB",
                                style: TextStyle(
                                  color: Colors.blue
                                ),)
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                      Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 3,),
                            Text("Calls",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),

                       Stack(
                         alignment: Alignment.center,
                         children: [
                           SizedBox(
                             height: 90,
                             width: 90,
                             child:  CircularProgressIndicator(
                               color: Colors.red,
                             strokeWidth: 5,
                             value: 0.9,
                               strokeCap: StrokeCap.round,
                             ),
                           ),
                           Column(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               Text("200",
                               style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold
                               ),),
                               SizedBox(height: 3,),
                               Text("Mins",
                                 style: TextStyle(
                                   color: Colors.red
                                 ),
                               )
                             ],
                           )
                         ],
                       )
                      ],
                    ),

                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.sms),
                            SizedBox(width: 3,),
                            Text("Sms",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),

                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child:  CircularProgressIndicator(
                                color: Colors.yellow,
                                strokeWidth: 5,
                                value: 0.9,
                                strokeCap: StrokeCap.round,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("500",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 3,),
                                Text("SMS",
                                  style: TextStyle(
                                      color: Colors.blue
                                  ),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
            ),
              SizedBox(height: 90,),
              Row(
                children: [
                  Column(
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 28.0),
                       child: Transform.flip(
                         flipX: true,
                         child: const Icon(Icons.sell,
                         color: Colors.red,
                         size: 30,),
                       ),
                     ),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text("Packages",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),),
                      )
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Icon(Icons.layers,
                      size: 30,
                      color: Colors.red,),
                      SizedBox(height: 3,),
                      Text("Apps",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent
                        ),)
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Icon(Icons.support_agent,
                        size: 30,
                        color: Colors.red,),
                      SizedBox(height: 3,),
                      Text("Support",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent
                        ),)
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Icon(Icons.celebration,
                        size: 30,
                        color: Colors.red,),
                      SizedBox(height: 3,),
                      Text("My World",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange
                        ),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.history,
                      size: 30,
                      color: Colors.redAccent,),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text("View History",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent
                          ),),
                      )
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Icon(Icons.layers,
                        size: 30,
                        color: Colors.red,),
                      SizedBox(height: 3,),
                      Text("Islam",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent
                        ),)
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Icon(Icons.local_offer,
                        size: 30,
                        color: Colors.red,),
                      SizedBox(height: 3,),
                      Text("Disc",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent
                        ),)
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Icon(Icons.play_circle,
                        size: 30,
                        color: Colors.red,),
                      SizedBox(height: 3,),
                      Text("Bajaoooo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange
                        ),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text("Bajao",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,

                    ),),
                  ),
                  SizedBox(width: 220,),
                  Text("View more",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent
                  ),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Card(
                      child: Image.asset("assets/images/img_3.png",
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(20),
                    ),
                  ),
                  SizedBox(width: 3,),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Card(
                      child: Image.asset("assets/images/img_2.png",
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(20),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
  }

}