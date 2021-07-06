import 'package:flutter/material.dart';
import 'package:notes/app_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTES'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              final description =
                  await Navigator.pushNamed(context, '/create-note');
              if (description != null) {
                notes.add(description as String);
                setState(() {});
              }

              setState(() {});
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < notes.length; i++)
              AppCardWidget(
                title: notes[i],
                onPressed: () {
                  notes.removeAt(i);
                  setState(() {});
                },
                onTap: () async {
                  var response = await Navigator.pushNamed(
                      context, '/create-note',
                      arguments: notes[i]);
                  if (response != null) {
                    var description = response as String;
                    if (description.isEmpty) {
                      notes.removeAt(i);
                    } else {
                      notes[i] = description;
                    }
                  }
                  setState(() {});
                },
              )
          ],
        ),
      ),
    );
  }
}
