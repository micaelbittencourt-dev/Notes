import 'package:flutter/material.dart';
import 'package:notes/create_note_page.dart';
import 'package:notes/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      routes: {
        '/': (context) => HomePage(),
        '/create-note': (context) => CreateNotePage(),
      },
    );
  }
}
