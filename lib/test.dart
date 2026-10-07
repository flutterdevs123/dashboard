// void main() {
//   List<int> checkAge = [2, 4, 8];
//
//
//
//   for(int i = 0; i < 10; i++){
//
//     if(!checkAge.contains(i)){
//       print(i);
//     }
//
//   }
//
// }

// void main(){
//   String arslanHamid = "ArslanHamid";
//
//   String reversed = "";
//
//   for(int i = arslanHamid.length-1; i >= 0; i--){
//     String updated = arslanHamid[i];
//   print(updated);
//
//   }
//
// }
//
// import 'dart:io';
//
// void main(){
//   String arslan = "ArslanHamid";
//
//
//   for(int i = 0; i < 6; i++){
//     String newName = arslan[i];
// stdout.write(newName);
//   }
//   for(int j = arslan.length-1; j >= 6; j--){
//     String newName2 = arslan[j];
//     stdout.write(newName2);
//   }
//
//
// }
//
// import 'dart:io';
//
// void main(){
//
//   stdout.write("Enter the Line for Opposite the index");
//   int userEnter = int.tryParse(stdin.readLineSync() ?? "")?? 0;
//
//    stdout.write("Write the Index for make the Opposite Word");
//    int oppositeWord = int.tryParse(stdin.readLineSync() ?? "") ??0;
//
//    for(int)
// }
// import 'dart:io';
//
// void main(){
//   List <int> num1 = [5,6,2];
//   List<int> num2 = [3,4,6];
//
// List<int> empty = [];
//
//
//   for(int j = 0; j<num2.length; j++){
//     int newNum2 = num2[j];
//     int total2 = newNum2 + num1[j];
// empty.add(total2);
//
//   }
//
//   print("$empty");
// }
// void main() {
//   List<int> numbers = [-15, -4, 0, 7, 12, -8, 25, 3, -1, 18, 32, -9, 0, 6];
//
// List <int> a = [];
// List <int> b = [];
//  for(int num in numbers){
//
//
//      if( num > 0){
//        a.add(num);
//      }
//      else{
//        b.add(num);
//      }
//    
//  }
//   print(a);
//   print(b);
//  
//
// }

// ---------Calculator---------

//----------Add the two numbers to make 3rd important number -----------

//-------------What is the difference between Validation and authentication ??--------------

// void main(){
//   List<int> multiply = [1, 2, 3, 4];
//
//   List<int> result = [];
// for(int i = 0; i < multiply.length; i++){
//
//   int product = 1;
//
//   for(int j = 0; j < multiply.length; j++){
//     if(i !=j){
//        product = product * multiply[j];
//     }
//   }
//   result.add(product);
// }
// print(result);
// }

// void main() {
//   List<int> numbers = [2, 4, 3, 5, 6, -2, 4, 7, 8];
//   int target = 7;
//
//   print("Target Sum ($target) ke mukhtalif pairs:");
//
//   for (int i = 0; i < numbers.length; i++) {
//
//     for (int j = i + 1; j < numbers.length; j++) {
//
//       if (numbers[i] + numbers[j] == target) {
//         print("Pair mil gaya: (${numbers[i]}, ${numbers[j]})");
//       }
//     }
//   }
// }


// void main() {
//   List<int> numbers = [3, 8, 5, 10, 7, 4];
//
// List<int> a = [];
//
//
//   for(int num in numbers){
//
//     if(num %  2 ==0)
//       {
//
//         a.add(num);
//
//       }
//
//     }
//   print(a);
//   }


//
// void main() {
//  int number = 5;
//
//  int nuwNum = number -1 ;
//  nuwNum = number * nuwNum;
//  print(nuwNum);
// }
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
    title: Text("Expense Tracker"),
    actions: [
     Icon(Icons.person),
     SizedBox(width: 16),
    ],
   ),
   body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      // 1. Total Balance Card
      Container(
       width: double.infinity,
       padding: EdgeInsets.all(20),
       decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
       ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text("Total Balance", style: TextStyle(color: Colors.white, fontSize: 16)),
         SizedBox(height: 8),
         Text("Rs. 35,000", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        ],
       ),
      ),
      SizedBox(height: 20),

      // 2. Heading
      Text("Recent Expenses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      SizedBox(height: 10),

      // 3. Transactions List (Aage chal kar yahan ListView aayegi)
      Expanded(
       child: ListView(
        children: [
         ListTile(
          leading: Icon(Icons.shopping_cart, color: Colors.blue),
          title: Text("Grocery"),
          subtitle: Text("Today, 2:00 PM"),
          trailing: Text("- Rs. 2,000", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
         ),
         ListTile(
          leading: Icon(Icons.flash_on, color: Colors.orange),
          title: Text("Electricity Bill"),
          subtitle: Text("Yesterday"),
          trailing: Text("- Rs. 5,000", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
         ),
        ],
       ),
      ),
     ],
    ),
   ),

   // 4. Floating Action Button (+)
   floatingActionButton: FloatingActionButton(
    onPressed: () {
     // Yahan naye page par jane ka code aayega
    },
    child: Icon(Icons.add),
   ),
  );
 }
}