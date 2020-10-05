import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("barra de navegacion"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('primero'),
              onTap: () {},
            ),
            ListTile(
              title: Text('data'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, position) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200.0,
                        height: 150.0,
                        color: Colors.blue,
                        child: Text("Posicion "),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
