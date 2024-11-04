import 'package:flutter/material.dart';

class SetStateDemo extends StatefulWidget {
  const SetStateDemo({super.key});

  @override
  State<SetStateDemo> createState() => _SetStateDemoState();
}

class _SetStateDemoState extends State<SetStateDemo> {
  String setStateValue = "DevOps Tech";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("SetState"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(setStateValue),
          ),
          const Center(
            child: Text("Prompt Engineering"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setStateValue ="Developer productivity";
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}