import 'package:flutter/material.dart';
import 'package:flutter_interview_test/presentation/core/configs/config.dart';
import 'package:flutter_interview_test/presentation/detail/pages/detail_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Note {
  final String note;
  final String creationDate;
  final String lastUpdateDate;

  Note({
    required this.note,
    required this.creationDate,
    required this.lastUpdateDate,
  });
}

class _MyHomePageState extends State<MyHomePage> {
  List<Note> notes = [];
  final int _maxNotes = 10;

  void _addNote(String note) {
    setState(() {
      notes.add(
        Note(
            note: "New Note",
            creationDate: DateTime.now().toString(),
            lastUpdateDate: DateTime.now().toString()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Config.strings.appName),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(notes[index].note),
              tileColor: Config.colors.secondary,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    note: notes[index].note,
                    creationDate: DateTime.now().toString(),
                    lastUpdateDate: DateTime.now().toString(),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addNote('New Note');
        },
        tooltip: 'Add Note',
        child: const Icon(Icons.add),
      ),
    );
  }
}
