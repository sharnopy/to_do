import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.transparent)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: 4,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.blue),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("This Is Task One"), Text("task one descr")],
            ),
            Container(
              child: Icon(Icons.done),
            )
          ],
        ),
      ),
    );
  }
}



