import 'package:flutter/material.dart';
import 'package:qr_code_scraner/screen/cameria.dart';
import 'package:qr_code_scraner/screen/qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyQrCode()));
          },
          child: Container(
            width: 200,
            height: 100,
            color: Colors.cyan,
            child: const Center(
              child: Text(
                "Scaner",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cameria()));
          },
          child: Container(
            width: 200,
            height: 100,
            color: Colors.cyan,
            child: const Center(
              child: Text(
                "Cameria",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
