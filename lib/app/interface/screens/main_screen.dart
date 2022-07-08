import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/widgets/card_reuse.dart';

import '../widgets/popup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Listas De Compra',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF4A9777),
      ),
      backgroundColor: const Color(0xFF89CDB2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ReuseCard(
              widget: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        'Junho',
                        style: TextStyle(
                          color: Color(0xFFA6BAB2),
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                'Frios',
                                style: TextStyle(
                                  color: Color(0xFFA6BAB2),
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            Text(
                              'Bebidas',
                              style: TextStyle(
                                color: Color(0xFFA6BAB2),
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/images/face.png',
                          ),
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30.0,
        ),
        child: FloatingActionButton.large(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const PopUpInsertList());
          },
          backgroundColor: const Color(0xFF4A9777),
          elevation: 10,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
