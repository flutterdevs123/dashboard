import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SimpleMarksCalc()));
}

class SimpleMarksCalc extends StatefulWidget {
  const SimpleMarksCalc({super.key});

  @override
  State<SimpleMarksCalc> createState() => _SimpleMarksCalcState();
}

class _SimpleMarksCalcState extends State<SimpleMarksCalc> {
  // 1. Obtained Marks ke 7 Controllers
  TextEditingController o1 = TextEditingController();
  TextEditingController o2 = TextEditingController();
  TextEditingController o3 = TextEditingController();
  TextEditingController o4 = TextEditingController();
  TextEditingController o5 = TextEditingController();
  TextEditingController o6 = TextEditingController();
  TextEditingController o7 = TextEditingController();

  // 2. Total Marks ke 7 Controllers
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();
  TextEditingController t6 = TextEditingController();
  TextEditingController t7 = TextEditingController();

  String resultText = "Result yahan nazar aaye ga";

  // 3. Calculation Function
  void calculateAll() {
    // Obtained Marks ka Sum
    double totalObtained = (double.tryParse(o1.text) ?? 0) +
        (double.tryParse(o2.text) ?? 0) +
        (double.tryParse(o3.text) ?? 0) +
        (double.tryParse(o4.text) ?? 0) +
        (double.tryParse(o5.text) ?? 0) +
        (double.tryParse(o6.text) ?? 0) +
        (double.tryParse(o7.text) ?? 0);

    // Total Marks ka Sum
    double totalMarks = (double.tryParse(t1.text) ?? 0) +
        (double.tryParse(t2.text) ?? 0) +
        (double.tryParse(t3.text) ?? 0) +
        (double.tryParse(t4.text) ?? 0) +
        (double.tryParse(t5.text) ?? 0) +
        (double.tryParse(t6.text) ?? 0) +
        (double.tryParse(t7.text) ?? 0);

    // Percentage Calculation
    if (totalMarks > 0) {
      double percentage = (totalObtained / totalMarks) * 100;

      setState(() {
        resultText = "Obtained Marks: $totalObtained\n"
            "Total Marks: $totalMarks\n"
            "Percentage: ${percentage.toStringAsFixed(2)}%";
      });
    } else {
      setState(() {
        resultText = "Meharbani karke Total Marks darj karein!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Marks Calculator")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Subject 1
            buildMarkRow("Subject 1", o1, t1),
            // Subject 2
            buildMarkRow("Subject 2", o2, t2),
            // Subject 3
            buildMarkRow("Subject 3", o3, t3),
            // Subject 4
            buildMarkRow("Subject 4", o4, t4),
            // Subject 5
            buildMarkRow("Subject 5", o5, t5),
            // Subject 6
            buildMarkRow("Subject 6", o6, t6),
            // Subject 7
            buildMarkRow("Subject 7", o7, t7),

            const SizedBox(height: 20),

            // Calculate Button
            ElevatedButton(
              onPressed: calculateAll,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text("Calculate All", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),

            const SizedBox(height: 20),

            // Result Text Box
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.blue.shade50,
              child: Text(
                resultText,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Row design ke liye chhota helper widget
  Widget buildMarkRow(String label, TextEditingController obtController, TextEditingController totController) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: obtController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "$label Obtained",
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: totController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "$label Total",
                border: const OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}