import 'package:flutter/material.dart';

class aboutme extends StatelessWidget {
  const aboutme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "BIODATA : ",
                style: TextStyle(
                  fontSize: 25,
                  height: 1.7,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "Nama : Rizky natalia",
                style: TextStyle(
                  fontSize: 25,
                  height: 1.7,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "TL : 23-12-1997",
                style: TextStyle(
                  fontSize: 25,
                  height: 1.7,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "Cita-Cita : Pengusaha",
                style: TextStyle(
                  fontSize: 25,
                  height: 1.7,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "Alamat : jl.Pal-Betung km 29 sembawa",
                style: TextStyle(
                  fontSize: 25,
                  height: 1.7,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
