import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoDetailScreen extends StatefulWidget {
  const InfoDetailScreen({super.key});

  @override
  State<InfoDetailScreen> createState() => _InfoDetailScreenState();
}

class _InfoDetailScreenState extends State<InfoDetailScreen> {
  final double boxSize = 150.0;
  int numOfSingleTap = 0;
  int numOfDoubleTap = 0;
  int numOfLongPress = 0;

  double posX = 0.0; // Horizontal position
  double posY = 0.0; // Vertical position

  @override
  Widget build(BuildContext context) {
    if (posX == 0) {
      centerPosition(context);
    }
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: posY,
          left: posX,
          child: GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              setState(() {
                posX += details.delta.dx;
                posY += details.delta.dy;
              });
            },
            onTap: () {
              setState(() {
                numOfSingleTap++;
              });
            },
            onDoubleTap: () {
              setState(() {
                numOfDoubleTap++;
              });
            },
            onLongPress: () {
              setState(() {
                numOfLongPress++;
              });
            },
            child: Container(
              width: boxSize,
              height: boxSize,
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: Text(
          'Taps: $numOfSingleTap | Double Taps: $numOfDoubleTap | Long Press: $numOfLongPress',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  void centerPosition(BuildContext context) {
    posX = (MediaQuery.of(context).size.width - boxSize) / 2;
    posY = (MediaQuery.of(context).size.height - boxSize) / 2;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
}