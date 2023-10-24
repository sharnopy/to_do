import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:newtodo/models/task_model.dart';
import 'package:newtodo/shared/firebase/firebase_manger.dart';

class TaskItem extends StatelessWidget {
  TaskModel task;
   TaskItem(this.task,{super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.transparent)),
      child: Slidable(
        startActionPane: ActionPane(motion: DrawerMotion(),children: [
          SlidableAction(onPressed: (BuildContext context) {
            FirebaseManger.deleteTask(task.id);
          },
            backgroundColor: Colors.red,
            label: "Delete",
            icon: Icons.delete,
            borderRadius:BorderRadius.only(topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12)) ,
          ),
          SlidableAction(onPressed: (BuildContext context) {  },
            backgroundColor: Colors.blue,
            label: "Edit",
            icon: Icons.edit,
          )
        ],),
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
                children: [Text(task.title), Text(task.description)],
              ),
              InkWell
                (
                onTap: () {
                  task.isDone=true;
                  FirebaseManger.update(task);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                  decoration: BoxDecoration(
                    color: task.isDone?Colors.green:Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),

                  child:task.isDone?Text("isDone!"): Icon(Icons.done,
                  color: Colors.white,
                  size: 30,),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



