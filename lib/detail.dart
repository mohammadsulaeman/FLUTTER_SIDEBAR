import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar, this.email});
  String? nama;
  String? gambar;
  String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Detail $nama"),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children: [
                Image(image: NetworkImage(gambar!)),
                Text(
                  nama!,
                  style: const TextStyle(fontSize: 20.0, fontFamily: "Serif"),
                ),
                Text(email!)
              ],
            ),
          ),
        ));
  }
}
