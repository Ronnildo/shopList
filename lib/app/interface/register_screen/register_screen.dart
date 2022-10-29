import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoplist/app/interface/login_screen/login_screen.dart';
import 'package:shoplist/app/interface/main_screen/main_screen.dart';
import 'package:shoplist/app/interface/widgets/buttom_screen.dart';
import 'package:shoplist/app/interface/widgets/container_color.dart';
import 'package:shoplist/app/interface/widgets/form_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegiterScreenState();
}

class _RegiterScreenState extends State<RegisterScreen> {
  _register() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  _main() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerColor(
        widget: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropShadow(
                  child: Image(
                    image: const AssetImage(
                      "assets/images/account.png",
                    ),
                    fit: BoxFit.fill,
                    height: 259,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                const Divider(
                  height: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blueGrey,
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 5,
                ),
                const InputForm(
                  icon: Icons.person,
                  labeltext: "name",
                  valorInicial: "name",
                  ocultar: false,
                ),
                const SizedBox(height: 20),
                const InputForm(
                  icon: Icons.email,
                  labeltext: "E-mail",
                  valorInicial: "E-mail",
                  ocultar: false,
                ),
                const SizedBox(height: 20),
                const InputForm(
                  icon: FontAwesomeIcons.asterisk,
                  labeltext: "Password",
                  valorInicial: "Password",
                  ocultar: true,
                ),
                const SizedBox(height: 20),
                const InputForm(
                  icon: FontAwesomeIcons.asterisk,
                  labeltext: "Confirm password",
                  valorInicial: "Confirm password",
                  ocultar: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: _main,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 22,
                          ),
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          primary: Theme.of(context).colorScheme.onPrimary,
                          //textStyle: Theme.of(context).textTheme.button,
                        ),
                        child: Text(
                          "Register".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: _register,
                        child: Text(
                          "login?",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
