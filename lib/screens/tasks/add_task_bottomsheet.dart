import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskBottomSheet extends StatefulWidget {

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
var titleController=TextEditingController();

var descriptionController=TextEditingController();
var selectedDate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              "Add new task ",
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w700
            ),),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(
              label: Text("task title"),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: descriptionController,
            decoration: InputDecoration(
              label: Text("task description"),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text("Select Data ",style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black
          ),),
          SizedBox(
            height: 9,
          ),
          InkWell(
            onTap: () {
              selectData();
            },
            child: Text(selectedDate.toString().substring(0,10),style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.blue
            ),
            textAlign: TextAlign.center,),
          ),
          SizedBox(
            height: 18,
          ),
          ElevatedButton(

              onPressed: () {

          }, child:Text("Add task") )
        ],
      ),
    );
  }

  selectData() async{
   DateTime? chosenDate=await  showDatePicker(context: context,
        initialDate: selectedDate, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365)));
   if(chosenDate==null){
     return;
   }
   selectedDate=chosenDate;
   setState(() {

   });
  }
}

