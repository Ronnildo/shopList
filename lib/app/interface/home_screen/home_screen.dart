import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:shoplist/app/interface/login_screen/login_screen.dart';
import 'package:shoplist/app/interface/register_screen/register_screen.dart';
import 'package:shoplist/app/interface/widgets/buttom_screen.dart';
import 'package:shoplist/app/interface/widgets/container_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? onhover = false;

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  void register() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: ContainerColor(
        widget: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ShopList',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const Icon(
                    Icons.calendar_month,
                    size: 50,
                    color: Colors.black,
                  ),
                ],
              ),
              Text(
                'Your personal shopping organizer',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const DropShadow(
                blurRadius: 5,
                child: Image(
                  image: AssetImage(
                    'assets/images/shopping_app.png',
                  ),
                  width: 374,
                  height: 300,
                  fit: BoxFit.fill,
                ),
              ),
              ButtomMain(funcao: login, text: "Login"),
              ButtomMain(funcao: register, text: "Register")
            ],
          ),
        ),
      ),
    );
  }
}
