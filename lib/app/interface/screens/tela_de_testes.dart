import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoplist/app/interface/screens/list_screen.dart';
import 'package:shoplist/app/interface/widgets/buttom_validate.dart';

class TelaDeTestes extends StatefulWidget {
  const TelaDeTestes({Key? key}) : super(key: key);

  @override
  State<TelaDeTestes> createState() => _TelaDeTestesState();
}

class _TelaDeTestesState extends State<TelaDeTestes> {
  // late TextEditingController _controller;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _controller.addListener(() {
  //     final String text = _controller.text.toLowerCase();
  //     _controller.value = _controller.value.copyWith(
  //       text: text,
  //       selection:
  //       TextSelection(baseOffset: text.length, extentOffset: text.length),
  //       composing: TextRange.empty,
  //     );
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  void voltar() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draw',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 320.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                          ),
                          child: const Text(
                            'Adicionar Item',
                            style: TextStyle(
                              fontSize: 36.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Positioned(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          maxLength: 19,
                          decoration: InputDecoration(
                            labelText: 'Nome do Item',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text('Categoria do Item'),
                            Icon(Icons.sort_by_alpha),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 1,
                maxChildSize: 1,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 190.0, right: 20.0, bottom: 90.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                ChecarCaixa(title: 'title$index'),
                              ],
                            );
                          }),
                    ),
                  );
                }),
            Positioned(
              bottom: 20,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: voltar,
                    child: const ButtomValidate(icon: FontAwesomeIcons.xmark),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  GestureDetector(
                    onTap: voltar,
                    child: const ButtomValidate(icon: FontAwesomeIcons.check),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
