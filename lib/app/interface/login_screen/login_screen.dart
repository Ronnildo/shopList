import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoplist/app/interface/main_screen/main_screen.dart';
import 'package:shoplist/app/interface/register_screen/register_screen.dart';
import 'package:shoplist/app/interface/widgets/buttom_screen.dart';
import 'package:shoplist/app/interface/widgets/container_color.dart';
import 'package:shoplist/app/interface/widgets/form_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreen> {
  _main() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainScreen(),
      ),
    );
  }

  _register() {
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
        widget: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 74),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DropShadow(
                  blurRadius: 6,
                  child: Image(
                    image: AssetImage(
                      "assets/images/account.png",
                    ),
                    width: 374,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const InputForm(
                  icon: Icons.email,
                  labeltext: "E-mail",
                  valorInicial: "myname@email.com",
                  ocultar: false,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 10.0),
                  child: InputForm(
                    icon: FontAwesomeIcons.asterisk,
                    labeltext: "Password",
                    valorInicial: "123456",
                    ocultar: true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: _main,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 40,
                    ),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    primary: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "Login".toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: _register,
                    child: Text(
                      "Create account? register?",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
