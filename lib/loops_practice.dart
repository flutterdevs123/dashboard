import 'package:flutter/material.dart';

class LoopsPractice extends StatefulWidget {
  const LoopsPractice({super.key});


  @override
  State<LoopsPractice> createState() => _LoopsPracticeState();
}

class _LoopsPracticeState extends State<LoopsPractice> {

List<String> friendsList = ["Arslan", "Hamid", "Ehtisham", "Ahmad"];

List <String> longNames = [];
void filterLongNames(){
  for(String num in friendsList){
    if(num.length >=5){
      longNames.add(num);
    }
  }
}


TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Text("Added ${longNames.toString()}"),
          ElevatedButton(onPressed: (){
            setState(() {
              filterLongNames();
            });
          }, child: Text("Check Name"))
        ],
      ),
    );
  }
}
