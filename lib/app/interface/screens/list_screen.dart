import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:shoplist/app/interface/screens/home_screen.dart';
import 'package:shoplist/app/interface/screens/main_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF4A9777),
        title: const Text(
          'Item List',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
      ),
      backgroundColor: const Color(0xFF89CDB2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              height: 50.0,
              color: const Color(0xFF4A9777),
              child: const Text(
                'Criar Lista',
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              height: 300.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Row(
                      children: const <Widget>[
                        Text(
                          'Mês',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: const <Widget> [
                        Text(
                          'Data',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF4A9777),
        child: const Icon(Icons.add),
      ),
    );
  }
}
