import 'package:flutter/material.dart';

void main() => runApp(MyCardApp());

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Derek CardApp'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          ], //fin Widget
        ), //Fin AppBar
        body: Container(
          child: ListView(
            children: <Widget>[
              _items('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/img_DiscoDuro.jpeg', 'Disco duro', 'SSD de 256 GB'),
              SizedBox(height: 5.0), // Fin Item1
              _items('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/img_MemoriaRAM.jpeg', 'Memoria Ram', 'Memoria Ram Ddr3 Sodimm Kingston 8gb 1600mhz Pc3-12800 1.35v'),
              SizedBox(height: 5.0), //Fin Ietm 2
              _items('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/img_laptop.jpeg', 'Laptop', 'Laptop Asus 15.6" X512Ja Ci5 10Th 12G 1Tb+ 256Ssd Plata'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/img_monitor.jpeg', 'Monitor', 'Monitor Qian Led 23.8 , Vga, Hdmi, Resolucion 1920x1080, Sin Marco, Negro (qm2380f)'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/img_camara.jpeg', 'Camara', 'Sony Cámara Alpha α7M3 con sensor de imagen Full-Frame 35mm y 24.2 MP. Sensor CMOS Exmor R™'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/img_bocina.jpeg', 'Bocina', 'Bocina portátil EXTRA BASS™ XB12 con BLUETOOTH®'),
              SizedBox(height: 5.0), //Fin Ietm 3
              _items('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/derek.jpg', 'Mi imagen', 'Mi imagen'),
            ], //Fin Widget []
          ), //Fin ListView
        ), //Fin de Container
      ), //Fin Scaffold
    ); //Fin MaterialApp
  } //Fin widget

  Widget _items(String url, String producto, String subt) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.red,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellowAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subt, style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin MyCardApp
