import 'package:firstapp/categories_list/cafe_list.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'categories_list/bar_list.dart';
import 'categories_list/hotel_list.dart';
import 'categories_list/restaurant_list.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'HOME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool selected = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          //カフェ
          IconButton(
            iconSize: 80,
            color: Colors.black,
            icon: const Icon(Icons.local_cafe),
            onPressed: () {
              //ここに画面遷移などのイベントを書く。
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CafeList()),
              );
              setState(() {
                selected = !selected;
              });
            },
            isSelected: selected,
            selectedIcon: const Icon(Icons.settings),
          ),

          IconButton(
            iconSize: 80,
            color: Colors.black,
            icon: const Icon(Icons.sports_bar),
            onPressed: () {
              //ここに画面遷移などのイベントを書く。
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BarList()),
              );
              setState(() {
                selected = !selected;
              });
            },
            isSelected: selected,
            selectedIcon: const Icon(Icons.settings),
          ),

          IconButton(
            iconSize: 80,
            color: Colors.black,
            icon: const Icon(Icons.restaurant),
            onPressed: () {
              //ここに画面遷移などのイベントを書く。
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RestaurantList()),
              );
              setState(() {
                selected = !selected;
              });
            },
            isSelected: selected,
            selectedIcon: const Icon(Icons.settings),
          ),

          IconButton(
            iconSize: 80,
            color: Colors.black,
            icon: const Icon(Icons.night_shelter),
            onPressed: () {
              //ここに画面遷移などのイベントを書く。
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HotelList()),
              );
              setState(() {
                selected = !selected;
              });
            },
            isSelected: selected,
            selectedIcon: const Icon(Icons.settings),
          ),

          ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//sqflite
class Memo {
  final int id;
  final String cafe;
  final String restaurant;

  Memo({this.id, this.cafe, this.restaurant});
}