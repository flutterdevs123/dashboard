import 'package:flutter/material.dart';

class NewJazzUi extends StatefulWidget {
  const NewJazzUi({super.key});

  @override
  State<NewJazzUi> createState() => _NewJazzUiState();
}

class _NewJazzUiState extends State<NewJazzUi> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.notifications,
        size: 30,
        color: Colors.white,),

        title:
        Text("Jazz World",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),),
        actions: [
          Icon(Icons.refresh,size: 30, color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.search,size: 30, color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.menu,size: 30, color: Colors.white,),
          SizedBox(width: 10,)
        ],
      ),

      body: Column(
        children: [
          //black color and take upper part 
          Expanded(
            flex: 1,
              child: Container(

            decoration: BoxDecoration(
              color: Colors.black87
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your balance is ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white
                        ),),
                          SizedBox(height: 5,),
                          Text("Rs. 498",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white
                          ),)
                        ],
                      ),
                      SizedBox(width: 80,),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/img_1.png"),
                      ),
                      SizedBox(width:15,),
                      Column(
                        children: [
                          Text("Arslan Hamid",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 3,),
                          Text("033000xxxxx",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),),

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 38,),
                  Container(
                    color: Colors.yellow,
                    height: 40,
                    width: double.infinity,
                    child: Center(
                      child: Text("Tap to recharge",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                    ),

                  )
                ],
              ),
            ),
          ),

          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 18),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 70 ,

                          color: Colors.blueGrey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Usage Remaining",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                              SizedBox(width: 240,),
                              Text("View",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                      ),

                      Container(
                        color: Colors.green,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bolt),
                                      Text("DATA",style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.blueGrey,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                                    child: Column(
                                      children: [
                                        Text("1408",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                          ),
                                        ),
                                        Text("Mb",
                                          style: TextStyle(
                                              fontSize: 10,

                                              color: Colors.black
                                          ),
                                        )
                                      ],
                                    ),


                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.call),
                                      Text("CALLS",style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.blueGrey,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                                    child: Column(
                                      children: [
                                        Text("1408",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellow
                                          ),
                                        ),
                                        Text("Mins",
                                          style: TextStyle(
                                              fontSize: 10,

                                              color: Colors.yellow
                                          ),
                                        )
                                      ],
                                    ),


                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.message),
                                      Text("SMS",style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.blueGrey,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                                    child: Column(
                                      children: [
                                        Text("1408",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.redAccent
                                          ),
                                        ),
                                        Text("Sms",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.redAccent
                                          ),
                                        )
                                      ],
                                    ),


                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 100,
                        width: double.infinity,

                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                        image: DecorationImage(image: AssetImage("assets/images/img_1.png",),
                        fit: BoxFit.cover,)
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(Icons.music_note),
                              ),
                              SizedBox(width:15,),
                              Column(
                                children: [
                                  Text("Jazz tunes",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  SizedBox(height: 3,),
                                  Text("033000xxxxx",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold
                                    ),),

                                ],
                              ),
                              SizedBox(width: 110,),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("View More",style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Icon(Icons.chevron_right, size: 16, color: Colors.red),
                                    ],
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.local_fire_department,
                                color: Colors.redAccent,
                                size: 30,),
                                Text("Whats New",style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                            SizedBox(width: 50,),
                            Column(
                              children: [
                                Icon(Icons.local_activity,
                                  color: Colors.redAccent,
                                  size: 30,),
                                Text("Arslan`s Offers",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                            SizedBox(width: 50,),
                            Column(
                              children: [
                                Icon(Icons.history,
                                  size: 30,
                                color: Colors.redAccent,),
                                Text("View History",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(Icons.grid_view,
                                  color: Colors.redAccent,
                                  size: 30,),
                                Text("Packages",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                            SizedBox(width: 50,),
                            Column(
                              children: [
                                Icon(Icons.work,
                                  color: Colors.redAccent,
                                  size: 30,),
                                Text("More Services",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                            SizedBox(width: 70,),
                            Column(
                              children: [
                                Icon(Icons.sim_card,
                                  size: 30,
                                  color: Colors.redAccent,),
                                Text("Buy Sim",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            )
                          ],
                        ),
                      ),
                    ],

                  ),
                ),

              ))
        ],
      ),
    );
  }
}
