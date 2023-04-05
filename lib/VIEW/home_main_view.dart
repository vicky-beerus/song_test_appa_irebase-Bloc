import 'package:flutter/material.dart';

import 'ADD_SONG/add_song_view.dart';
import 'FAV_SONG/fav_song_view.dart';
import 'home_view.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  int index = 0;
  List pageList = [HomePage(), FavSongPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Songs App"),
        backgroundColor: Colors.black,
      ),
      body: pageList.elementAt(index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AddSongPage()));
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.green),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        child: BottomNavigationBar(
            showSelectedLabels: true,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.green,
            currentIndex: index,
            type: BottomNavigationBarType.shifting,
            onTap: (val) {
              setState(() {
                index = val;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.music_note,
                  ),
                  label: "home",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  label: "fav",
                  backgroundColor: Colors.black),
            ]),
      ),
    );
    ;
  }
}
