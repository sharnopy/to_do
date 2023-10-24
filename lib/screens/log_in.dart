import 'package:flutter/material.dart';

class Login extends StatelessWidget {
 static const String routeName="Login";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Todo App"),
          bottom: TabBar(

            tabs: [

              Tab(

                text: "Login",
              ),Tab(

                text: "Registra",
              ),

            ],
          ),

        ),
        body: TabBarView(

          children: [

          ],

        ),
      ),
    );
  }
}
