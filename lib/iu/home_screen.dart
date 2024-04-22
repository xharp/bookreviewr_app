import 'package:bookreviewr_app/iu/add_review_screen.dart';
import 'package:bookreviewr_app/iu/info_screen_detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BookReviewr'),
        backgroundColor: Colors.deepPurple[300],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InfoDetailScreen()));
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: Center(child: TextButton(
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Contoh'),
              content: Text('Silakan tulis review buku terbaru'),
              actions: <Widget>[
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text('OK'))
              ],
            );
          });
        },
        child: Text('Belum ada review buku'))),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Shasha Ramadhani Putri',
                  style: TextStyle(color: Colors.white)),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white, // Warna latar belakang avatar
                child: FlutterLogo(size: 42.0),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple, // Warna latar belakang header
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddReviewScreen()));
        },
        child:
            Icon(Icons.photo_library), // Menggunakan ikon untuk mengunggah foto
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books), label: 'Library'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ]),
    );
  }
}
