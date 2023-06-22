import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelList extends StatelessWidget {
  const HotelList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel List'),

      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }

}