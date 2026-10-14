import 'package:flutter/material.dart';

class MedicinesReminder extends StatefulWidget {
  const MedicinesReminder({super.key});

  @override
  State<MedicinesReminder> createState() => _MedicinesReminderState();
}

class _MedicinesReminderState extends State<MedicinesReminder> {
  String userName = "Loading...";
  int _currentIndex = 0;
  String userEmail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Color(0xDD2F80ED),),),
                Text(userEmail,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Color(0xDD2F80ED),),)
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
    );
  }
}
