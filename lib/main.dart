import 'package:bookreviewr_app/iu/home_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BookReviewrApp());
}

class BookReviewrApp extends StatelessWidget {
  const BookReviewrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookReviewr App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false, // Menonaktifkan debug banner
    );
  }
}
