import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explain extends StatelessWidget {
  const Explain({super.key});

  @override
  Widget build(BuildContext context) {
    return ExplainPage(title: 'Happy Tiger');
  }
}

class ExplainPage extends StatefulWidget {
  const ExplainPage({super.key, required this.title});

  final String title;

  @override
  State<ExplainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ExplainPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF2B2D42),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Fronchetti_Cowboy.png", width: 580, height: 300),
            SizedBox(height: 40),
            ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [Color(0xFFAABA9E), Color(0xFFFCB97D)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(bounds),
                child: Column(
                  children: [
                    Text(
                      'Who doesn’t like an adventure and',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'to learn about the hobbies and',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'weekend activities of your fellow',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'LSU students and Baton Rouge',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'residents? Go on your own',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'adventure! Go to Tigerland! See',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'how much of the BR College Bar',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Experience you can get through!',
                      style: GoogleFonts.merriweather(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pop(context);},
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_circle_left_rounded,
                          size: 40.0,),
      ),
    );
  }
}
