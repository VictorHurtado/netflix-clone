import 'package:flutter/material.dart';
import 'package:netflix_clone/Components/circular_item.dart';
import 'package:netflix_clone/Components/image_item.dart';
import 'package:netflix_clone/Components/mainHeader.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: this.bottomNavigationBar(_currentPage),
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            MainHeader(),
            this.listViewHorizontal("avances", 10, CircularItem()),
            SizedBox(
              height: 10,
            ),
            this.listViewHorizontal("Viajes", 10, ImageItem()),
            SizedBox(
              height: 10,
            ),
            this.listViewHorizontal("Tendencias", 10, ImageItem()),
            SizedBox(
              height: 10,
            ),
            this.listViewHorizontal("Mi Lista", 10, ImageItem()),
          ],
        ));
  }

  Widget listViewHorizontal(String title, int quantity, Widget item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        Container(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: quantity,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }

  Widget bottomNavigationBar(int currentPage) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          this._currentPage = index;
        });
      },
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentPage,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'add'),
        BottomNavigationBarItem(
            icon: Icon(Icons.download_done_outlined), label: 'download'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'more'),
      ],
    );
  }
}
