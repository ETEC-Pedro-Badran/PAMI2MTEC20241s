import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(colorSchemeSeed: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text("Primeiro"),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.face_2_rounded,
              size: 140,
            ),
            Text("Evaldo"),
            Icon(
              Icons.face_2_rounded,
              size: 140,
            ),
            Text("André"),
            Icon(
              Icons.face_2_rounded,
              size: 140,
            ),
            Text("Juliano")
          ],
        ),
      ),
    ),
  ));
}
