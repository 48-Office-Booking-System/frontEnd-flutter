import 'package:flutter/material.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({ Key? key }) : super(key: key);

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        title: const Text('State Management'),
      ),
      body:Column(
        children: [
          Text('$number',
          style: const TextStyle(fontSize:30),),
          ElevatedButton(
            onPressed: (){
            setState((){
              number++;
            });
            },
          child :const Text ('Tambah'),
          ),
        ],
      )
    );
  }
}