// ignore: unused_import
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem Vindo ao BtheB' ), 
        backgroundColor: Color.fromARGB(255, 81, 20, 179),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Usuário',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
              obscureText: true,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(username: _usernameController.text),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String username;

  SecondScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🦇'),
        backgroundColor: Color.fromARGB(255, 114, 14, 99),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Login feito com sucesso, bem-vindo $username!',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 6, 6, 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.purple),
              onPressed: () {
                Navigator.pop(context);
                
              },
            ),
        ElevatedButton(
               onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => FirstScreen())
                );
               },
               
               style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple),
               ),
               
               child: const Text(
                'Entrar', style: TextStyle(color: Color.fromARGB(255, 212, 192, 13)),
               ),
            
            ),
        
          ],
        ),
      ),
    );

    
  }
  
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(),
    );
  }


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BtheB', style: TextStyle(color: Colors.purple)),
        backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      ),
      backgroundColor: Colors.black,
     extendBodyBehindAppBar: true,
     body: Column(
      children: [
        Container(
          height: 300,//altura
          width:900 ,// largura
         child: Image.network('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/main/imagens/BtheB-Photoroom.png-Photoroom.png'

         ),
      
        ),
      
        Expanded(
          child: Center(
            child: ElevatedButton(
               onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => Screen()),
                );
               },
               
               style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple),
               ),
               
               child: const Text(
                '🦇 HISTORIA 🦇', style: TextStyle(color: Color.fromARGB(255, 212, 192, 13)),
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
  

class Screen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('BtheB  🦇 🦇 🦇', style: TextStyle(color: Colors.purple)),
        backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      ),
      backgroundColor: Colors.black,
       body: Column(
      children: [
        Container(
          height: 300,//altura
          width:900 ,// largura
         child: Image.network('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/main/imagens/BtheB%20(1).jpg'

         ),
      
        ),
            const Text(
              'BECO do BATMAN ',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 150, 32, 171), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text('O Beco do Batman é um famoso ponto turístico localizado na Vila Madalena, em São Paulo. Conhecido por suas coloridas e vibrantes obras de arte urbana, o local atrai visitantes de todo o mundo, incluindo artistas, fotógrafos e entusiastas da cultura urbana. As paredes do beco e das ruas vizinhas são cobertas por grafites e murais que mudam regularmente, criando um cenário dinâmico e inspirador para os amantes da arte de rua. O Beco do Batman se tornou uma referência em São Paulo, celebrando a expressão artística e a criatividade da cidade',
             style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
            ),
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