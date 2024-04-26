import 'package:flutter/material.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, constraints) {
        if (constraints.maxWidth < 600) {
          return ListView(
            children: _generateConstraints(),
          );
        } else if (constraints.maxWidth < 900) {
          return GridView.count(
            crossAxisCount: 2,
            children: _generateConstraints()
            );
        } else {
          return GridView.count(crossAxisCount: 6
          );
        }
      }
      )
    );
  }

  List<Widget> _generateConstraints() {
    return List<Widget>.generate(10, (index) {
      return Container(
        margin: EdgeInsets.all(8),
        color: Colors.deepPurple[300],
        height: 200,
      );
    });
  }
}