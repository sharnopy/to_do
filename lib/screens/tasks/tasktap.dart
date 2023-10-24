import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:newtodo/models/task_model.dart';
import 'package:newtodo/screens/tasks/task_item.dart';
import 'package:newtodo/shared/firebase/firebase_manger.dart';

class TasksTab extends StatefulWidget {
  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: selectedDate,
          firstDate: DateTime.now().subtract(Duration(days: 365)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date) {
            selectedDate = date;
            setState(() {});
          },
          leftMargin: 20,
          monthColor: Colors.blueGrey,
          dayColor: Colors.teal[200],
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Colors.redAccent[100],
          dotsColor: Colors.white,
          selectableDayPredicate: (date) => true,
          locale: 'en_ISO',
        ),
        Expanded(
            child: StreamBuilder<QuerySnapshot<TaskModel>>(
          stream : FirebaseManger.getTasks(selectedDate),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("something went wrong"));
            }
            var tasks = snapshot.data?.docs.map((e) => e.data()).toList() ?? [];
            return ListView.builder(
              itemBuilder: (context, index) {
                return TaskItem(tasks[index]);
              },
              itemCount: tasks.length,
            );
          },
        ))
      ],
    );
  }
}
