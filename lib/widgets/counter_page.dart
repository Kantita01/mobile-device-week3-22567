import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter App",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            Text(
              "$counter",
              style: TextStyle(color: Colors.white, fontSize: 250),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    incrementCounter();
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    resetCounter();
                  },
                  child: Icon(Icons.restore),
                ),
                ElevatedButton(
                  onPressed: () {
                    decrementCounter();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}