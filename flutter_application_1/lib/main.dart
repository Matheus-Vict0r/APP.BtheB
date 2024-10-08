// ignore: unused_import
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart'; // NOVOOOO (Nova API)

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
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/refs/heads/main/imagens/tela%20login%20bat.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 250, 
            width: double.infinity,
            child: Image.network(
              'https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/refs/heads/main/imagens/BtheB-Photoroom.png-Photoroom.png', 
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
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
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/refs/heads/main/imagens/conffii.jpeg'), 
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          'Login feito com sucesso, bem-vindo $username!',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      color: Color.fromARGB(255, 179, 0, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen())
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
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/refs/heads/main/imagens/telll.jpeg'), 
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 300,//altura
            width:250 ,// largura
            child: Image.network('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/refs/heads/main/imagens/logo%20tela.png'
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
                  '🦇 HISTORIA 🦇', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              
              ),
            )
          )
        ],
      ),
    ),
    
    bottomNavigationBar: BottomAppBar(
      color: Color.fromARGB(255, 179, 0, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0),),
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
  // segunda Tela //

class Screen extends StatelessWidget {



 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/refs/heads/main/imagens/hisss.jpeg').image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          // Your existing code here
          Container(
            height: 300,//altura
            width:500 ,// largura
            child: Image.network('https://raw.githubusercontent.com/Matheus-Vict0r/APP.BtheB/refs/heads/main/imagens/hisss.jpeg'
            ),
          ),
          const Text(
            'BECO do BATMAN ',
            style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 90, 32, 171), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Text('O Beco do Batman é um famoso ponto turístico localizado na Vila Madalena, em São Paulo. Conhecido por suas coloridas e vibrantes obras de arte urbana, o local atrai visitantes de todo o mundo, incluindo artistas, fotógrafos e entusiastas da cultura urbana. As paredes do beco e das ruas vizinhas são cobertas por grafites e murais que mudam regularmente, criando um cenário dinâmico e inspirador para os amantes da arte de rua. O Beco do Batman se tornou uma referência em São Paulo, celebrando a expressão artística e a criatividade da cidade',
            style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 253, 253), fontWeight: FontWeight.bold),
          ),

          // Codigo Novo //
          SizedBox(height: 60, width: 10,), 
          ElevatedButton(
            child: Text('Instagram do Beco'),
            onPressed: () {
              launch('https://www.instagram.com/becodobatman.oficial/');
            },
          ),
        ],
      ),
    ),
  );
}
}
