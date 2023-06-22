import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarList extends StatelessWidget {
  const BarList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar List'),

      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }

}