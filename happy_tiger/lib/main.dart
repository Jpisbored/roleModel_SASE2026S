import 'new.dart';
import 'load.dart';
import 'explanation.dart';
import 'package:flutter/material.dart';
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
        colorScheme: .fromSeed(seedColor: Color(0xFFAABA9E)),
      ),
      home: const MyStarterPage(title: 'Happy Tiger'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF2B2D42),

      body: Center(

        child: Column(

          mainAxisAlignment: .center,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xFFAABA9E), Color(0xFFFCB97D)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: Text(
                'Happy Tiger:',
                style: GoogleFonts.merriweather(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xFFAABA9E), Color(0xFFFCB97D)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: Text(
                'With Courage',
                style: GoogleFonts.merriweather(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xFFAABA9E), Color(0xFFFCB97D)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: Text(
                'comes Happiness',
                style: GoogleFonts.merriweather(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async{
                await createSession();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewSession()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFAABA9E),
              ),
              child: Text(
                'New Session',
                style: GoogleFonts.merriweather(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadSession()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFAABA9E),
              ),
              child: Text(
                'Load Session',
                style: GoogleFonts.merriweather(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xFFAABA9E), Color(0xFFFCB97D)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: Text(
                'Dedicated to Fronchetti',
                style: GoogleFonts.merriweather(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 8),
            Image.asset("assets/images/Fronchetti_Glasses.png", width: 580, height: 300, fit: BoxFit.fill),
            SizedBox(height: 8),
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xFFAABA9E), Color(0xFFFCB97D)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: Text(
                'and his Drunk Tiger robotics project',
                style: GoogleFonts.merriweather(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Explain()),
                );
        },
        tooltip: 'Nav -> Explanation',
        child: const Icon(Icons.question_mark_rounded,
                          size: 40.0,),
                          
      ),
    );
  }
}
