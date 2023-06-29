import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {

  late String _imageUrl; //

  Future<String> _fetchData() async{
    final response =  await http.get(Uri.parse("https://api.thecatapi.com/v1/images/search")); // metre un "?" à la fin de l'url 
    if (response.statusCode == 200){
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      final imageUrl = jsonData[0]['url'] as String;
      return imageUrl;
    } else {
      throw Exception("erreur de chargement des données");
    }
  }

  recharger(){
    setState(() {
      const CatPage();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: _fetchData(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              _imageUrl = snapshot.requireData;
              return Image.network(_imageUrl);
            } else if (snapshot.hasError){
              return const Text("erreur de chargement");
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
        ElevatedButton(
          onPressed: recharger, 
          child: const Text("recharger"))
      ],
    );
  }
}





