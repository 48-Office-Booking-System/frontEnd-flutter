import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add contact'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 16.0),
              // ignore: prefer_const_constructors
              CircleAvatar(
                backgroundImage:
                    // ignore: prefer_const_constructors
                    NetworkImage('https://picsum.photos/id/237/200/300'),
                radius: 100,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Group',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Add Contact'),
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
