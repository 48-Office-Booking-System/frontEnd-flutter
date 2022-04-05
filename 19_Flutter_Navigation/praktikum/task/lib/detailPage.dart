import 'package:flutter/material.dart';
import 'editPage.dart';
import 'main.dart';
import 'contact.dart';

// ignore_for_file: file_names
class DetailPage extends StatelessWidget {
  Contact contact;
  DetailPage({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text('Detail Contact'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(contact: contact),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Delete Contact'),
                    content: const Text(
                        'Are you sure you want to delete this contact?'),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text('CANCEL'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade800,
                        ),
                      ),
                      ElevatedButton(
                        child: const Text('DELETE'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade800,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage('${contact.avatarUrl}'),
              radius: 100,
            ),
            const SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.person,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text('${contact.fullName}'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                const Icon(Icons.phone),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text('${contact.initials}'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
