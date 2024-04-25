import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BtheB'),
      ),
      backgroundColor: Colors.black,
     extendBodyBehindAppBar: true,
     body: Column(
      children: [
        Container(
          height: 200,//altura
          width:200 ,
         child: Image.network('https://private-user-images.githubusercontent.com/127435388/325584119-6bdd9af5-e997-4de9-a4f8-abd16c652d01.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTQwNDQwNjMsIm5iZiI6MTcxNDA0Mzc2MywicGF0aCI6Ii8xMjc0MzUzODgvMzI1NTg0MTE5LTZiZGQ5YWY1LWU5OTctNGRlOS1hNGY4LWFiZDE2YzY1MmQwMS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwNDI1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDQyNVQxMTE2MDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1iOGM1OTY1Y2UyZDQ1ODA2ZWQ3MjI4ZTY2MWFhNGIzZDRkZGIyN2JjN2YwNDUzOTk2YTkzNjk5NzI3NDQ3MTc1JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.i9bsrIOk98KHiPu0EYyPrBJXLFbQo1fEAn8rGwXg1AE'

         ),
      
        ),
      
        Expanded(
          child: Center(
            child: ElevatedButton(
               onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => SecondScreen()),
                );
               },
               style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple),
               ),
               child: const Text(
                'HISTORIA', style: TextStyle(color: Color.fromARGB(255, 212, 192, 13)),
               ),
            ),
          )
        )
      ],
     ),
          
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          IconButton(
            icon: Icon(Icons.home, color: Colors.purple,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          
         ],
        ),
      ),
      
    );
    
  }
  
}
  

class SecondScreen extends StatelessWidget {
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(''),
            SizedBox(height: 20),
            Text(
              'BECU do BATMAN '
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          IconButton(
            icon: Icon(Icons.home, color: Colors.purple,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
         ],
        ),
      ),
    );
  }
}