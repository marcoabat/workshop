import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _notes = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Notes'),
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
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  final String _note;

  const NoteCard(this._note, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(_note),
      ),
    );
  }
}
