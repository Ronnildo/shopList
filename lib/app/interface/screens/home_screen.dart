import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF89CDB2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'ShopList',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: Icon(
                Icons.calendar_month,
                size: 50,
                color: Colors.black,
              ),
            ),
            Text(
              'Your personal shopping organizer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropShadow(
              blurRadius: 2,
              child: Image(
                image: AssetImage(
                  'assets/images/shopping_app.png',
                ),
                //fit: BoxFit.fitWidth,
                height: 400,
                width: 360,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

            /*ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF4A9777),
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(
                  color: Color(0XFFFAFCFB),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Concert One',
                ),
              ),
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegiterScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF4A9777),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                textStyle: const TextStyle(
                  color: Color(0XFFFAFCFB),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Concert One',
                ),
              ),
              child: const Text('Register'),
            ),*/