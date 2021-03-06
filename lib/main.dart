import 'package:flutter/material.dart';
import 'package:oficina_3_3/base-text.dart';
import 'package:oficina_3_3/green-button.dart';
import 'package:oficina_3_3/h1-text.dart';
import 'package:oficina_3_3/red-button.dart';

import 'base-button.dart';
import 'blue-button.dart';
import 'yellow-button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oficina 3.3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Oficina de Flutter - Aula 3.3"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 900,
                minWidth: 900,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Botões",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      BaseButton(label: "Botão Base"),
                      SizedBox(
                        width: 10,
                      ),
                      BlueButton(label: "Botão Azul"),
                      SizedBox(
                        width: 10,
                      ),
                      GreenButton(label: "Botão Verde")
                    ],
                  ),
                  Row(
                    children: [
                      BaseButton.rounded(label: "Botão Arredondado Base"),
                      SizedBox(
                        width: 10,
                      ),
                      BlueButton.rounded(label: "Botão Arredondado Azul"),
                    ],
                  ),
                  Row(
                    children: [
                      YellowButton.rounded("Botão Arredondado Amarelo"),
                      SizedBox(
                        width: 10,
                      ),
                      BaseButton.person(label: "Botão com ícone base"),
                    ],
                  ),
                  Row(
                    children: [
                      RedButton.pets(label: "Botão vermelho com ícone")
                    ],
                  ),
                  Column(
                    children: [
                      Text("Textos",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                      BaseText(label: "Texto Base"),
                      H1Text(
                        label: "Um texto gigante",
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
