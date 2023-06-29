import 'package:flutter/material.dart';
import 'package:the_barre_code/pages/barreCodePage.dart';
import 'package:the_barre_code/pages/homePage.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) { // methode builde permet d'assembler les éléments à l'interieur
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const [
            Text("Accueil"),
            Text("Lire des codes barres"),
          ][_currentIndex], // en fonction de _currentIndex qui depend de la liste
        ),
        body: [
          const HomePage(),
          const BarrePage(),
        ][_currentIndex],// en fonction de _currentIndex qui depend de la liste
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blueGrey,
          iconSize: 32,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.barcode_reader),
              label: 'Scanneur'
            ),
          ]
        ) ,
      ),
    );
  }
}
