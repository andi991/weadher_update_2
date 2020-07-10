import 'dart:io';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'search_result.dart';

class InputLocation extends StatelessWidget{
  InputLocation({@required this.cari_lokasi, this.description, this.temp});
  final String cari_lokasi;
  final String description;
  final String temp;

  Future<Map> getData() async {
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl;
    var response = await request;
    var data = json.decode('https://api.openweathermap.org/data/2.5/weather?q=$cari_lokasi&APPID=43ea6baaad7663dc17637e22ee6f78f2&units=metric');
    var description = data['weather']['description'];
    var temp = data['main']['temp'];
    return { 'description': description, 'temp': temp };
  }

  main() async {
    print(await getData());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}
