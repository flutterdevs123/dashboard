import 'package:flutter/material.dart';

class Dashboard1 extends StatefulWidget {
  const Dashboard1({super.key});

  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool menuButton = true;
  bool customized = true;

  TextEditingController textField = TextEditingController();

  final List<Map<String,dynamic>> quickAccessItem = [
    {"title": "Focus \n Timer", "icon" : Icons.timer, "color" : Color(0xFF421DC8)},
    {"title": "Planner", "icon" : Icons.calendar_today, "color" : Colors.blueGrey},
    {"title": "Journal", "icon" : Icons.menu_book, "color" : Colors.green},
    {"title": "Goals", "icon" : Icons.track_changes, "color" : Colors.redAccent},
    {"title": "Reminder", "icon" : Icons.notifications, "color" : Color(0xFF421DC8)}
  ];

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
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1CCAA1)
                      ),
                      child: IconButton(onPressed: (){
                       setState(() {

                        menuButton = !menuButton;
                       });

                      }, icon: menuButton ? Icon(Icons.menu) : CircularProgressIndicator(
                        color: Colors.redAccent,
                      )),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Evening",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent
                            ),),
                          SizedBox(height: 3,),
                          Text(
                            "Arslan  👋",
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent),
                          ),
                          Text("Let's make today amazing!",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),)
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.notifications),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/img_1.png"),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 230,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF421DC8)
                  ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),

                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                Container(
                                     height: 40,
                                     width: 40,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(12),
                                       color: Colors.grey
                                     ),

                                   ),
                                 SizedBox(width: 3),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text("Daily Mantra",
                                       style: TextStyle(
                                           fontSize: 15,
                                           fontWeight: FontWeight.bold,
                                           color: Colors.redAccent
                                       ),),
                                  ),

                               ],
                             ),
                         SizedBox(height: 10,),
                         Row(
                           children: [
                             Text("Discipline Today, \n freedom \n tomorrow",
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                               color: Colors.white
                             ),),
                      SizedBox(width: 30,),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Card(
                          child: Image.asset("assets/images/img_2.png",
                          fit: BoxFit.cover,),

                        ),
                      )
                           ],
                         ),
                         SizedBox(height: 20,),
                         Row(
                           children: [
                             Icon(Icons.favorite,
                             size: 20,
                             color: Colors.white,),
                             SizedBox(width: 5,),
                             Text("Keep Going!", style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15,
                                 color: Colors.white
                             ),)
                           ],
                         )
                       ],
                     ),
                   ),
                 ),
                SizedBox(height: 20,),
                TextField(
                  controller: textField,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your text here",
                  ),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                  setState(() {
                    quickAccessItem.add(
                        {"title": textField.text,
                        "icon" : Icons.star,
                        "color" : Colors.deepOrange}
                    );
                  });
                }, child: Center(
                  child: Text("Add",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold
                  ),),
                )),
                Text("At a Glance",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blueAccent
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                            child: Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.grey
                                    ),
                                    child: Icon(Icons.checklist),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("8",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white
                                  ),),
                                  SizedBox(height: 5,),
                                  Text("Tasks \n Pending",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                          ),
                          ),


                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueAccent
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey
                                  ),
                                  child: Icon(Icons.event_available),
                                ),
                                SizedBox(height: 5,),
                                Text("3",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white
                                ),),
                                SizedBox(height: 5,),
                                Text("Habits \n Active",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueAccent
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey
                                  ),
                                  child: Icon(Icons.access_time),
                                ),
                                SizedBox(height: 5,),
                                Text("2",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white
                                ),),
                                SizedBox(height: 5,),
                                Text("Events \n Today",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueAccent
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.grey
                                  ),
                                  child: Icon(Icons.bookmark_border),
                                ),
                                SizedBox(height: 5,),
                                Text("4",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white
                                ),),
                                SizedBox(height: 5,),
                                Text("Notes \n Saved",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ),


                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text("Quick Access",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                      ),),
                    SizedBox(width: 130,),
                    GestureDetector(

                      onTap: (){
                        setState(() {
                          customized = ! customized;

                        });

                      },
                      child: Text("Customize",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.white
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                 children: quickAccessItem.map((item){
                   return Padding(
                     padding: const EdgeInsets.only(right: 8.0),
                     child: Stack(
                       children: [
                         Column(
                           children: [
                             if(customized)
                               GestureDetector(
                                 onTap: (){
                                   setState(() {
                                     customized = !customized;
                                     quickAccessItem.remove(item);
                                   });
                                 },
                                 child: Icon(Icons.delete,color: Colors.white,
                                 size: 15,),

                               ),
                             SizedBox(height: 5),
                             CircleAvatar(
                               radius: 25,
                               backgroundColor: item["color"],
                               child: Icon(item["icon"]),

                             ),
                             Text(item["title"],
                                 style: TextStyle(
                                   fontSize: 15,
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,)

                             )
                           ],
                         )
                       ],
                     ),
                   );
                 }).toList()
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Today`s Schedule ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                      ),),
                    SizedBox(width: 100,),
                    Text("View All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.redAccent
                      ),),
                  ],
                ),
                Container(
                  height: 230,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF421DC8)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                        child: Row(

                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                              child: Icon(Icons.school),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Column(
                                children: [
                                  Text("Study Session",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.redAccent
                                  ),),

                                  Text("10:00 AM - 11:30 AM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      color: Colors.white
                                    ),)
                                ],
                              ),
                            ),
                            Text("| Library",style: TextStyle(
                              color: Colors.white
                            ),),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

      ),



    );
  }
}
