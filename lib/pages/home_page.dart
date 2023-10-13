import 'package:app_shared/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences App"),
      ),
      drawer: MyDrawerWidget(),
      body: Column(
        children: [
          Text("Hola"),
        ],
      ),
    );
  }
}
