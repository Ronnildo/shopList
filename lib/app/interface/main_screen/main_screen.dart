import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoplist/app/interface/main_screen/listar_listas.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shoplist/app/interface/widgets/buttom_validate.dart';
import 'package:shoplist/app/interface/widgets/container_color.dart';

import 'popup_list.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        breakpoints: const ScreenBreakpoints(
          desktop: 900,
          tablet: 650,
          watch: 250,
        ),
        mobile: OrientationLayoutBuilder(
          portrait: (context) => const MainScreen(),
          landscape: (context) => const MainScreenLandspace(),
        ));
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DeviceInfoPlugin deviceInfo =
      DeviceInfoPlugin(); // instantiate device info plugin
  AndroidDeviceInfo? androidDeviceInfo;

  String? androidid;
  @override
  void initState() {
    super.initState();
    getDeviceinfo();
  }

  void getDeviceinfo() async {
    androidDeviceInfo = await deviceInfo
        .androidInfo; // instantiate Android Device Infoformation
    setState(() {
      androidid = androidDeviceInfo?.androidId;
    });
  }

  openDialog() {
    showDialog(
        context: context,
        builder: (context) => PopUpInsertList(
              id: androidid ?? "Null",
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
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
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 22,
        ),
      ),
      backgroundColor: const Color(0xFF89CDB2),
      body: ContainerColor(
        widget: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListarListas(
            androidId: androidid ?? "Null",
          ),
        ),
      ),
      floatingActionButton: ButtomValidate(
        icon: FontAwesomeIcons.plus,
        ontap: openDialog,
      ),
    );
  }
}

class MainScreenLandspace extends StatefulWidget {
  const MainScreenLandspace({Key? key}) : super(key: key);

  @override
  State<MainScreenLandspace> createState() => _MainScreenLandspaceState();
}

class _MainScreenLandspaceState extends State<MainScreenLandspace> {
  DeviceInfoPlugin deviceInfo =
      DeviceInfoPlugin(); // instantiate device info plugin
  AndroidDeviceInfo? androidDeviceInfo;

  String? androidid;
  @override
  void initState() {
    super.initState();
    getDeviceinfo();
  }

  void getDeviceinfo() async {
    androidDeviceInfo = await deviceInfo
        .androidInfo; // instantiate Android Device Infoformation
    setState(() {
      androidid = androidDeviceInfo?.androidId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Listas De Compra',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: Icon(Icons.abc),
        backgroundColor: const Color(0xFF4A9777),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListarListas(
          androidId: androidid ?? "Null",
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30.0,
        ),
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => PopUpInsertList(
                      id: androidid ?? "Null",
                    ));
          },
          backgroundColor: const Color(0xFF4A9777),
          elevation: 10,
          hoverElevation: 50,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
