import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CafeList extends StatelessWidget {
  const CafeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafe List'),

      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }

}