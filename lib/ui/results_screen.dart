import 'package:bmi_app/utils/bmi_values.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  int height;
  int weight;
  ResultScreen({required this.height, required this.weight});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  CalculateBmi calculateBmi = CalculateBmi();
  double result = 0.0;

  @override
  void initState() {
    super.initState();
    result = calculateBmi.bmiResult(widget.height, widget.weight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 38, 36),
      appBar: AppBar(
        title: const Text('Result'),
        backgroundColor: Color.fromARGB(255, 35, 38, 36),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "YOUR BMI RESULT",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${result.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
