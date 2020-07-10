import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'about_me.dart';
import 'search_result.dart';
import 'qr_scan.dart';

void main(){
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => new Home(),
      '/About' : (BuildContext context) => new MyProfil(),

    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  var _lokasi = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.home),
        title: new Text('Aplikasi Cuaca Sederhana'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person),
            onPressed: (){
              Navigator.pushNamed(context, '/About');
            },
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Image (image: AssetImage('images/icon2.png'), height: 100, width: 100, ),
                new Text('Selamat Datang', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new TextField(
                  controller: _lokasi,
                  decoration: new InputDecoration(
                      hintText: "Masukan Lokasi Anda",
                      labelText: "Lokasi",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: MaterialButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) =>
                        new InputLocation(cari_lokasi: _lokasi.text),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    textColor: Colors.white,
                    child: Text('Tampilkan Cuaca', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 5.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) =>
                        new TampilanHome(),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.cyan,
                    textColor: Colors.white,
                    child: Text('Cari Dengan QR Code', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}