import 'package:flutter/material.dart';
import 'kasus.dart' as kasus;
import 'provinsi.dart' as provinsi;
import 'kecamatan.dart' as kecamatan;
import 'kelurahan.dart' as kelurahan;
import 'kota.dart' as kota;

void main() {
  runApp(new MaterialApp(
    title: "Tampilan Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //create controller untuk tabBar
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor: Colors.lightBlue,
        //judul
        title: new Text(" "),
        //bottom
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
              text: 'Kasus',
            ),
            new Tab(
              icon: new Icon(Icons.public),
              text: 'Provinsi',
            ),
            new Tab(
              icon: new Icon(Icons.home_filled),
              text: 'Kota',
            ),
            new Tab(
              icon: new Icon(Icons.home_work),
              text: 'Kecamatan',
            ),
            new Tab(
              icon: new Icon(Icons.home_filled),
              text: 'Keluarahan',
            ),
          ],
        ),
      ),

      //source code lanjutan
      //buat body untuk tab viewnya
      body: new TabBarView(
        //controller untuk tab bar
        controller: controller,
        children: <Widget>[
          //kemudian panggil halaman sesuai tab yang sudah dibuat
          new kasus.Kasus(),
          new provinsi.Provinsi(),
          new kota.Kota(),
          new kecamatan.Kecamatan(),
          new kelurahan.Kelurahan(),
        ],
      ),
    );
  }
}
