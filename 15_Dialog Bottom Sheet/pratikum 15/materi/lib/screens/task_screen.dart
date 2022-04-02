import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:materi/screens/empty_task_screen.dart';
import 'package:materi/models/task_manager.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text('Task Management'),
        centerTitle : true,
    ),
    body : buildTaskScreen(),
    );
  }
  
  Widget buildTaskScreen(){
  return Consumer<TaskManager>(
    builder : (context,manager, child){
      if (manager.taskModels.isNotEmpty){
        return Container();
      }
      else {
        return const EmptyTaskScreen();
      }
    },
  );
}
}