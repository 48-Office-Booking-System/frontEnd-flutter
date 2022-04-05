import 'package:flutter/material.dart';
import 'contact.dart';

class EditPage extends StatelessWidget {
  Contact contact;
  EditPage({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text('Edit Contact'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 16.0),
              CircleAvatar(
                backgroundImage: NetworkImage('${contact.avatarUrl}'),
                radius: 100,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: '${contact.fullName}',
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  contact.fullName = value;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: '${contact.initials}',
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  contact.initials = value;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Save'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
