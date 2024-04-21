import 'package:flutter/material.dart';

class InfoDetailScreen extends StatelessWidget {
  const InfoDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Aplikasi Komik'),
        backgroundColor: Colors.deepPurple[300], // Sesuaikan dengan warna yang diinginkan
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'BookReviewr',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Ini adalah deskripsi dan info aplikasi BookReviewr',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
