import 'package:flutter/material.dart';

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
