import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'main_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const MainScreen(),
      duration: 5000,
      imageSize: 260,
      imageSrc: "assets/images/shopping_app.png",
      text: "ShopList",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 80.0,
      ),
      colors: const [
        Colors.black,
        Colors.grey,
        Color(0xFF4A9777),
      ],
      backgroundColor: const Color(0xFF89CDB2),
    );
  }
}
