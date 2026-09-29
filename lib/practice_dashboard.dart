import 'package:flutter/material.dart';

class PracticeDashboard extends StatefulWidget {
  const PracticeDashboard({super.key});

  @override
  State<PracticeDashboard> createState() => _PracticeDashboardState();
}

class _PracticeDashboardState extends State<PracticeDashboard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController textField = TextEditingController();

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
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue
                  ),
                  child: Icon(Icons.menu,
                  size: 15,),
                ),
                SizedBox(width: 280,),
                TextButton(onPressed: (){}, child: Icon(Icons.settings,
                size: 30,))
              ],
            ),
            SizedBox(height: 10,),
            Text("Let's crush your goals today",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                color: Colors.white
              ),),
            TextField(
              controller:textField,
              decoration: InputDecoration(
                hintText: "Enter the Text",
              ),
            ),

          ],
        ),
      ),
    );
  }
}
