import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'about_me.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'weadher_repo.dart';


//class WeadherRepo extends InputLocation{
//  var description;
//  var temp;
//  WeadherRepo({@required this.description, this.temp});
//}

void main(){
  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      '/About' : (BuildContext context) => new MyProfil(),
    },
  ));
}

class InputLocation extends StatelessWidget {
  InputLocation({@required this.cari_lokasi, this.description, this.temp});
  final String cari_lokasi;
  final String description;
  final String temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil Pencarian'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        color: Colors.white,
        alignment:  Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20, child: Container(
             color: Colors.white,
            )),
            new Text("${cari_lokasi}",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.black87
            ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "Cuaca Hari ini ${description}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "Suhu Hari Ini ${temp} °Celcius ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          color: Colors.cyan,
          child: Text('Home', style: TextStyle(fontSize: 25, color: Colors.white)),
          onPressed: (){
            Navigator.pop(context);
          }

        ),
      ),
    );
  }
}
