import 'dart:math';

import 'package:flutter/material.dart';

double randomBorderRadius(){
  return Random().nextDouble() * 20;
}

double randomMargin(){
  return Random().nextDouble() * 20;
}

Color randomColor() {
  return Color.fromARGB(
    255,
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
  );
}

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  late double borderRadius;
  late double margin;
  late Color color;

  void initState() {
    borderRadius = randomBorderRadius();
    margin = randomMargin();
    color = randomColor();
    
  }

  void changeState(){
    setState(() {
    borderRadius = randomBorderRadius();
    margin = randomMargin();
    color = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.bounceIn,
                  margin: EdgeInsets.all(margin),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(borderRadius)
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => changeState(), 
                child: Text('Ubah'))
            ],
          ),
        ),
      ),
    );
  }
}