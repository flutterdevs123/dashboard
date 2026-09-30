import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: AppBar(

            titleSpacing: 12,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                radius: 10,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/images/img_1.png"),
                  child: Icon(Icons.eighteen_mp)),
            ),
            title: Column(
              children: [
                Text("Good Morning",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                Text("Mr.Ahmed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Color(0xDD2F80ED),),)
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 26.0),
                child: Container(

                  height:40,
                width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xDD2F80ED),
                    ),
                    child: Icon(Icons.notifications_none,color: Colors.white,)),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(

               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Color(0xDD2F80ED),
               ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Free Health \n Checkup",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                     color: Colors.white),),
                     SizedBox(height: 8,),
                     Row(
                       children: [
                         Text("Book today and get \n free BP screening at\n Home",
                         style: TextStyle(
                         fontSize: 16,color: Colors.white),),
                       Expanded(
                         child: Container(
                           height: 103,
                             width: 165,
                           child: ClipRRect(
                             borderRadius : BorderRadius.only(
                               topRight: Radius.circular(16),
                               bottomRight: Radius.circular(16),
                               topLeft: Radius.circular(16),
                               bottomLeft: Radius.circular(16)
                             ),
                               child: Image.asset("assets/images/img_3.png",fit: BoxFit.cover,)),
                         ),
                       )
                       ],
                     ),
                     ElevatedButton(onPressed: (){}, child: Text("Book Now",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold
                     ),),
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.white,
                       foregroundColor: Color(0xDD2F80ED),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8)
                       )
                     ),)
                   ],
                 ),
               ),

             ),
              SizedBox(height: 10,),
              Container(

                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.50),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0,3)
                    )
                  ],
                    border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("DAILY STEP GOAL",style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),

                              Container(

                                color: Colors.pink.withOpacity(0.1),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.local_fire_department,color: Colors.orange,),
                                      Text("On Track",style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 4,),
                          Text("You're doing great! Keep it up.",style: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("6,432",style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,color: Color(0xDD2F80ED),
                              ),),
                              Text("/ 8,000 steps",style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.bold
                              ),),

                            ],
                          ),
                          SizedBox(height: 21,),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),color: Colors.pink.withOpacity(0.2),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.favorite,color: Colors.pink,size: 14,),
                                      SizedBox(width: 5,),
                                      Text("72",style: TextStyle(fontSize: 12,
                                      fontWeight: FontWeight.bold),),
                                      SizedBox(width: 5,),
                                      Text("bpm",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 24,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),color: Colors.pink.withOpacity(0.2),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.flash_on,color: Colors.black,size: 14,),
                                      SizedBox(width: 5,),
                                      Text("420",style: TextStyle(fontSize: 12,
                                          fontWeight: FontWeight.bold),),
                                      Text("kcal",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                      SizedBox(width: 30,),
                      Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            border: Border.all(width: 6,color: Color(0xDD2F80ED)),
                            color: Colors.white,
                          ),
                        child: Icon(Icons.directions_walk,color: Color(0xDD2F80ED),size: 32,),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Quick Services",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 108,
                    width: 109,
                    child:
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Container(
                              color: Colors.blue.withOpacity(0.1),
                            child: Icon(Icons.home,size: 30,color: Colors.blue,),
                          ),
                        ),
                        SizedBox(height: 1,),
                        Text("Home Care",style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold
                        ),),
                        Text("Nurse & Medics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 108,
                    width: 109,
                    child:
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Container(
                            color: Colors.cyan.withOpacity(0.1),
                            child: Icon(Icons.description,size: 30,color: Colors.cyan,),
                          ),
                        ),
                        SizedBox(height: 1,),
                        Text("Records",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                        ),),
                        Text("Reports",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 108,
                    width: 109,
                    child:
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Container(
                            color: Colors.blue.withOpacity(0.1),
                            child: Icon(Icons.medical_information,size: 30,color: Colors.red,),
                          ),
                        ),
                        SizedBox(height: 1,),
                        Text("Emergency",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red
                        ),),
                        Text("SOS24/",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.red),)

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: 348,
                height: 82,
                decoration: BoxDecoration(
                    color: Color(0xFFEBF3FB),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(image: AssetImage("assets/images/google_image.png"))
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Need Help?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("Support is here for you 24/7",style: TextStyle(fontSize: 12,fontWeight: FontWeight(400),
                            color: Colors.blue),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12,),
                    SizedBox(height: 35,
                      width: 105,
                      child: ElevatedButton(onPressed: (){}, child: Text("Chat Now",style: TextStyle(
                          fontSize: 12,fontWeight: FontWeight.bold
                      ),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            elevation: 3,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            )


                        ),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (index){
          setState(() {
            _currentIndex = index;
          });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person_search),label: "Doctors"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: "Appointments"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: "Support"),
            BottomNavigationBarItem(icon: Icon(Icons.percent_outlined),label: "Profile"),

          ]),
    );
  }
}
