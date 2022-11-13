import 'package:flutter/material.dart';

void main() => runApp(rutApp());

class rutApp extends StatelessWidget{
  const rutApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Gita ad Amsterdam', style: TextStyle(color: Colors.black),), backgroundColor: Colors.amber,),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
          child: Column(children: [
            Container(height: 50,),
            const Text('Pronti per una mega gita pazza sgravata?'),
            Container(height: 50,),
            Image.network('https://media.istockphoto.com/id/477307170/photo/night-city-view-of-amsterdam-the-netherlands.jpg?b=1&s=170667a&w=0&k=20&c=NL38hFysBnE3TjvPQKfJqW3XBbt6D-a5uku0UQqqglc='),
            Container(height: 100,),
            ElevatedButton(
              onPressed: () {
                SnackBar roba = const SnackBar(
                content: Text('La data della gita è: idk'));
                ScaffoldMessenger.of(context).showSnackBar(roba);
                },
            child: const Text('Informazioni'))
          ]));
      })));
  }
}