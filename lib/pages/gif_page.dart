import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text(this._gifData["title"],
          style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white), // troca a cor do icone de voltar
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(this._gifData["images"]["fixed_height"]["url"]);
            },
          )
        ],
      ),
      body: Center(
        child: Image.network(this._gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
