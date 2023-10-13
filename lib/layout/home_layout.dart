import 'package:flutter/material.dart';

import '../screens/setting/settings_tab.dart';
import '../screens/tasks/add_task_bottomsheet.dart';
import '../screens/tasks/tasktap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeLayout extends StatefulWidget {
  static const String routeName = "HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
extendBody: true,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)! .appTitle),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index=value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
body: tabs[index],
    );
  }
  showBottomSheet(){
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      builder: (context) {
       return Padding(
         padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
         child: AddTaskBottomSheet(),
       );
    },);
  }
  List<Widget> tabs = [TasksTab(), settings()];
}
