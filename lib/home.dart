import 'package:flutter/material.dart';
import 'package:prueba/pages/country_page.dart';

class Home extends StatelessWidget {
  void EscucharBoton(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => CountryPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final europeanCountries = [
      'Albania',
      'Andorra',
      'Armenia',
      'Austria',
      'Azerbaijan',
      'Belarus',
      'Belgium',
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'titulo',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: europeanCountries.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Text(europeanCountries[index]),
                    onPressed: () => EscucharBoton(context),
                  ),
                );

                // return ListTile(
                //   title: Text(europeanCountries[index]),
                // );
              },
            ),
          )

          //aqui es lista estatica
          // Expanded(
          //   child: ListView(
          //     children: [
          //       Container(
          //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          //         child: ListTile(
          //           title: Text('Comida Peruana'),
          //           subtitle: Text('comidas y mas'),
          //           leading: Icon(Icons.perm_camera_mic),
          //         ),
          //       ),
          //       Container(
          //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          //         child: ListTile(
          //           title: Text('Comida Mexicana'),
          //           subtitle: Text('orale'),
          //           leading: Icon(Icons.access_alarms),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );

    // pagina con fondo
    // return Scaffold(
    //   body: Stack(
    //     fit: StackFit.expand,
    //     children: [
    //       Positioned.fill(
    //         child: Image(
    //           image: AssetImage('assets/img/comida-peruana.jpg'),
    //           height: 0,
    //         ),
    //       ),
    // SafeArea(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: <Widget>[
    //       Image(
    //         image: AssetImage('assets/img/bandera-peru.png'),
    //         height: 50,
    //       ),
    //     ],
    //   ),
    // )
    //     ],
    //   ),
    // );
    //PAGINA 2 --------
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("barra de navegacion"),
    //   ),
    //   drawer: Drawer(
    //     child: ListView(
    //       children: <Widget>[
    //         ListTile(
    //           title: Text('primero'),
    //           onTap: () {},
    //         ),
    //         ListTile(
    //           title: Text('data'),
    //           onTap: () {},
    //         )
    //       ],
    //     ),
    //   ),
    //   body: Column(
    //     children: <Widget>[
    //       Expanded(
    //         child: GridView.builder(
    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                 crossAxisCount: 2),
    //             itemBuilder: (context, position) {
    //               return Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Container(
    //                     width: 200.0,
    //                     height: 150.0,
    //                     color: Colors.blue,
    //                     child: Text("Posicion "),
    //                   ));
    //             }),
    //       ),
    //     ],
    //   ),
    // );
  }
}
