import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:practice_1/models/onboarding_model.dart';

import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget{
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  var currentIndex = 0;

  final List<OnboardingModel> onboardingData = [
    OnboardingModel(
      image: "assets/images/img.png",
      title: "Consult only with a doctor you trust",
    ),
    OnboardingModel(
        image: "assets/images/img_1.png",
        title: "Find a lot of specialist doctors in one place"),
    OnboardingModel(
        image:"assets/images/onboard3.png",
        title: "Get connect our Online Consultation"
    )
  ];
  bool get isLastPage => currentIndex == onboardingData.length-1;
  void nextPage(){
    if(!isLastPage){
      setState((){
        currentIndex++;
      });

    }

  }

  @override
  Widget build(BuildContext context) {

    final data = onboardingData[currentIndex];
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Skip"))
            ],
          ),
          Image.asset(data.image),
          SizedBox(height: 30,),

          Text(data.title,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: nextPage, child: Text(isLastPage ? "Get Started" : "Next"))
        ],
      )),
    );
  }
}



