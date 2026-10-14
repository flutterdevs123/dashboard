import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();

  String t1 = "";

  String getWeekName(int weekDay){
    switch (weekDay){
      case 1 : return "MON" ;
      case 2 : return "TUES";
      case 3 : return "WED";
      case 4 : return "THURS";
      case 5 : return "FRI";
      case 6 : return "SAT";
      case 7 : return "SUN";
      default: return "";

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Weekly Review",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),
              TextButton(onPressed: (){

              }, child: Text("${selectedDate.day}"))
            ],
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, index){
                DateTime selectDate = DateTime.now().add(Duration(days: index));
                bool isSelected = selectedDate.day == selectDate.day &&
                  selectedDate.month == selectDate.month && selectedDate.year == selectDate.year;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedDate = selectDate;
                    });
                  },
                  child: Container(
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: isSelected ? Colors.blue : Color(0xFFF0F4F8)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          getWeekName(selectDate.weekday),style: TextStyle(
                          color: isSelected ? Colors.white70 : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )
                        ),
                        SizedBox(height: 6,),
                        Text("${selectDate.day}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                      ],
                    ),
                  ),
                );
            }),
          ),
        ],
      ),
    );
  }
}
