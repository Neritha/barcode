import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


// ignore: unused_import

class BarrePage extends StatefulWidget {
  const BarrePage({super.key});

  @override
  State<BarrePage> createState() => _BarrePageState();
}

class _BarrePageState extends State<BarrePage> {

  String _resultat = "";

  Future<void> _scanner() async {
    String codeBarre = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Annuler', true, ScanMode.BARCODE);

    setState(() {
      _resultat = codeBarre;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Et voici le clou du spectacle "),
          const Text("en construction"),

          ElevatedButton(
            onPressed: _scanner, 
            child: const Text("clicker sur ce btn pour scanner un code barre")
          ),
          Text("Le résultat du code-barres est : $_resultat"),
        ],
      )
    );
  }
}