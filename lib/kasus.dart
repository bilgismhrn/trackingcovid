import "package:flutter_application_1/kasus.dart";
import './model/get_post_modelindo.dart';
import './controler/get_post_indo.dart';
import 'package:flutter/material.dart';

class Kasus extends StatelessWidget {
  final GetPost _getPost = new GetPost();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _getPost.manggilPostData(),
          builder: (context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> dataPost = snapshot.data;

              return ListView.builder(
                  itemCount: dataPost.length,
                  itemBuilder: (context, index) {
                    return new Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Covid 19',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Calibri",
                                height: 2.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Positif',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "Times New Roman"),
                                    ),
                                  ],
                                ),
                                height: 140,
                                width: 140,
                                color: Colors.grey,
                                margin: EdgeInsets.all(10.0),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Sembuh',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "Times New Roman"),
                                    ),
                                    Text("" + dataPost[index].positif),
                                    Text("" + dataPost[index].sembuh),
                                    Text("" + dataPost[index].meninggal),
                                  ],
                                ),
                                height: 140,
                                width: 140,
                                color: Colors.lightBlueAccent,
                                margin: EdgeInsets.all(10.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Meninggal",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "Times New Roman"),
                                    ),
                                  ],
                                ),
                                height: 140,
                                width: 140,
                                color: Colors.pinkAccent,
                                margin: EdgeInsets.all(10.0),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Global",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: "Times New Roman"),
                                    ),
                                  ],
                                ),
                                height: 140,
                                width: 140,
                                color: Colors.orangeAccent,
                                margin: EdgeInsets.all(10.0),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}
