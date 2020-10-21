import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:convert';

class Lugares {
  int id;
  String nombre;
  String foto;
  Lugares(this.id, this.nombre, this.foto);
}

final opciones = [
  Lugares(1, "machupicchu", "assets/img/machupicchu.jpg"),
  Lugares(2, "sacsayhuaman", "assets/img/sacsayhuaman.jpg"),
  Lugares(3, "pisaq", "assets/img/pisaq.jpg"),
  Lugares(4, "ollantaytambo", "assets/img/ollantaytambo.jpg")
];

int numeroRandom = Random().nextInt(opciones.length);
var lugar = opciones[numeroRandom];

class Modelo1 extends StatefulWidget {
  @override
  State<Modelo1> createState() => new _Modelo1State();
}

class _Modelo1State extends State<Modelo1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("titulo"),
        ),
        body: Column(
          children: [
            Image(image: AssetImage(lugar.foto)),
            TextField(
              decoration:
                  InputDecoration(labelText: 'ingrese el nombre del lugar'),
              onSubmitted: (String lugarIngresado) async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    if (lugarIngresado == lugar.nombre) {
                      return AlertDialog(
                        title: const Text('Correcto!'),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    } else {
                      return AlertDialog(
                        title: const Text('Error!'),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                              numeroRandom = Random().nextInt(opciones.length);
                              lugar = opciones[numeroRandom];
                              setState(() {});
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    }
                  },
                );
              },
            ),
            Text(lugar.nombre),
          ],
        ));
  }
}
