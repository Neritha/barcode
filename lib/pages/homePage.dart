import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: unused_import
import 'barreCodePage.dart';
/*
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Et voici la home page "),
          Text("en construction"),
        ],
      )
    );
  }
}*/

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Et voici la home page"),
          Text("en construction"),
        ],
      )
    );
  }
}