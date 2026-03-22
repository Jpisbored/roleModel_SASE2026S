import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyExPage(title: "asdf");
  }
}

class MyExPage extends StatefulWidget {
  const MyExPage({super.key, required this.title});

  final String title;

  @override
  State<MyExPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyExPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _backgroundColor() {

    List<int> colorOptions = [0xFFAABA9E, 0xFFB5B8A3, 0xFFC6B89E, 0xFFEDD892, 0xFFFCB97D, 0xFFE5A872, 0xFFD09968, 0xFFBD8B5F, 0xFFAC7E56];
    int colorVal;

    if (_counter < colorOptions.length) {
      colorVal = colorOptions[_counter];
    } else {
      colorVal = colorOptions[colorOptions.length - 1];
    }

    return colorVal;

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(_backgroundColor()),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('[Enter Bar Name]',
                style: GoogleFonts.merriweather(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
            Text('Number of Drinks:',
                style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
            Text(
              '$_counter',
              style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2B2D42),
              ),
              child: Text(
                '+ Drink',
                style: GoogleFonts.merriweather(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/filler.jpg", width: 580, height: 300),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF2B2D42),
        onPressed: () {Navigator.pop(context);},
        tooltip: 'Nav -> Back',
        child: const Icon(Icons.arrow_circle_left_rounded,
          color: Colors.white,
          size: 40.0,
      ),
      ),
    );
  }
}
