// ignore: file_names
import 'package:flutter/material.dart';
import 'contact.dart';
import 'main.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Contacts'),
        backgroundColor: Colors.blue.shade800,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView.separated(
            itemBuilder: ((context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('${contactList[index].avatarUrl}'),
                ),
                title: Text('${contactList[index].fullName}'),
                subtitle: Text('Phone: ${contactList[index].initials}'),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              );
            }),
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: contactList.length),
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
        currentIndex: 1,
        selectedItemColor: Colors.blue[800],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GroupPage(),
                ),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
              break;
          }
        },
      ),
    );
  }
}
