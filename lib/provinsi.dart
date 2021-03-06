import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provinsi(),
    );
  }
}

class Provinsi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Center(
            child: Text(
              'Data Kasus Corona Berdasarkan Provinsi',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                      label: Text('No', style: TextStyle(color: Colors.black))),
                  DataColumn(
                      label: Text('Kelurahan',
                          style: TextStyle(color: Colors.black))),
                  DataColumn(
                      label: Text('Positif',
                          style: TextStyle(color: Colors.black))),
                  DataColumn(
                      label: Text('Sembuh',
                          style: TextStyle(color: Colors.black))),
                  DataColumn(
                      label: Text('Meninggal',
                          style: TextStyle(color: Colors.black))),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                          Text('1', style: TextStyle(color: Colors.black))),
                      DataCell(Text('Cangkuang Kulon',
                          style: TextStyle(color: Colors.black))),
                      DataCell(
                          Text('120', style: TextStyle(color: Colors.black))),
                      DataCell(
                          Text('2', style: TextStyle(color: Colors.black))),
                      DataCell(
                          Text('2', style: TextStyle(color: Colors.black))),
                    ],
                  ),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('2', style: TextStyle(color: Colors.black))),
                    DataCell(Text('Cangkuang Kulon',
                        style: TextStyle(color: Colors.black))),
                    DataCell(
                        Text('120', style: TextStyle(color: Colors.black))),
                    DataCell(Text('2', style: TextStyle(color: Colors.black))),
                    DataCell(Text('2', style: TextStyle(color: Colors.black))),
                  ])
                ],
              ))
        ],
      ),
    );
  }
}
