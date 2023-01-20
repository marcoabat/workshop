import 'package:flutter/material.dart';
import 'package:notes/pages/second_screen.dart';

import '../widgets/note_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notes'),
        actions: [
          IconButton(
            onPressed: navigateToScreen,
            icon: const Icon(Icons.login),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _notes.length,
              itemBuilder: (context, index) {
                return NoteCard(_notes[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Add a new note',
              ),
              onSubmitted: (text) {
                setState(() {
                  _notes.add(text);
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void navigateToScreen() {
    //TODO Zu SecondScreen navigieren
    // Navigator.of(context).push(...)
  }
}
