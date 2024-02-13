import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionary App',
      home: DictionaryPage(),
    );
  }
}

class DictionaryPage extends StatefulWidget {
  @override
  _DictionaryPageState createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  // Your dictionary (Map) data
  Map<String, dynamic> myDictionary = {
    'key1': 'value1',
    'key2': 42,
    'key3': true,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dictionary App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the dictionary entries
            for (var entry in myDictionary.entries)
              Text('${entry.key}: ${entry.value}'),

            // Add a button to add a new entry
            ElevatedButton(
              onPressed: () {
                // Open a dialog to add a new entry
                _showAddEntryDialog(context);
              },
              child: Text('Add Entry'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to show a dialog for adding a new entry
  Future<void> _showAddEntryDialog(BuildContext context) async {
    String newKey = '';
    String newValue = '';

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Entry'),
          content: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Key'),
                onChanged: (value) {
                  newKey = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Value'),
                onChanged: (value) {
                  newValue = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Add the new entry to the dictionary
                setState(() {
                  myDictionary[newKey] = newValue;
                });

                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
