import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));


const baseURL = 'http://100.89.135.68:8000';

Future<void> createSession() async {
  final url = Uri.parse('$baseURL/add_session');

  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'id': getRandomString(16),
      'datetime': DateTime.now().toIso8601String(),
    }),
  );
}

void main() {
  runApp(const StartPage());
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Tiger',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Color(0x00AABA9E)),
      ),
      home: const MyStarterPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyStarterPage extends StatefulWidget {
  const MyStarterPage({super.key, required this.title});

  final String title;

  @override
  State<MyStarterPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyStarterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0x002B2D42),
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: .center,
          children: [
            Text('With Courage', 
                  style: GoogleFonts.merriweather(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),),
            Text('comes Happiness', 
                        style:  GoogleFonts.merriweather(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                  ),),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () async{  
                                      await createSession();
                                       }, 
                            child: Text("New Session"),
                          ),
            ElevatedButton(onPressed: () {  }, 
                            child: Text("Load Session"),),
            Text('Dedicated to Fronchetti and his Drunk Tiger robotics project', 
                  style: GoogleFonts.merriweather(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),),
            Image.asset("Fronchetti_Glasses.png")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      
    );
  }
}
