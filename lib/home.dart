import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week3/screens/initialState.dart';
import 'package:week3/widgets/counter_page.dart';
import 'package:week3/widgets/row_page.dart';

import 'screens/setState.dart';
import 'widgets/card_demo.dart';
import 'widgets/column_page.dart';
import 'widgets/list_view_menu.dart';
import 'widgets/my_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("HomePage"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Best"),
              accountEmail: Text("liyanran6602@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.widgets),
              title: const Text("Row widget"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Column widget"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu),
              title: const Text("List view menu"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_score),
              title: const Text("Card & Inkwell widget"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text("My Card"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_add),
              title: const Text("SetState"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SetStateDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.backspace),
              title: const Text("Initial State"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InitialState(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.countertops),
              title: const Text("Counter App"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("My Home"),
      ),
    );
  }
}
