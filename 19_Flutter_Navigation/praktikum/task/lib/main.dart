import 'package:flutter/material.dart';
import 'groupPage.dart';
import 'contact.dart';
import 'detailPage.dart';
import 'addPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: ThemeData(
        primaryColor: Colors.blue.shade800,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => MyHomePage(),
        '/add': (context) => AddPage(),
        '/settings': (context) => SettingsPage(),
        '/search': (context) => SearchPage(),
        '/group': (context) => GroupPage(),
      },
    );
  }
}

bool isSorted = false;

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        backgroundColor: Colors.blue.shade800,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              if (isSorted) {
                contactList = contactList.reversed.toList();
                isSorted = false;
              } else {
                contactList.sort(
                  (a, b) => a.fullName!.compareTo('${b.fullName}'),
                );
                isSorted = true;
              }
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('${contactList[index].avatarUrl}'),
                ),
                title: Text('${contactList[index].fullName}'),
                subtitle: Text('Phone: ${contactList[index].initials}'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(contact: contactList[index]),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: contactList.length),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade800,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPage(),
            ),
          );
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Group',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue[800],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/group');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/settings');
              break;
          }
        },
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
