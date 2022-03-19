import 'package:flutter/material.dart';
import 'Chart_model.dart';
import 'DrawerScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: const DrawerScreen(),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(items[i].profileUrl),
              ),
              title: Text(items[i].name,style: const TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(items[i].message),
              trailing: Text(items[i].time),

            );
          },
          separatorBuilder: (ctx, i) {
            return const Divider();
          },
          itemCount: items.length),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.create,color: Colors.white,),
            backgroundColor: const Color(0xFF65a9e0),
            onPressed: (){}),
    );
  }
}