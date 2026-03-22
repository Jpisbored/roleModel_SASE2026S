import 'package:flutter/material.dart';

class NewSession extends StatelessWidget {
  const NewSession({super.key});

  @override
  Widget build(BuildContext context) {
    return NewSessionPage(title: 'Happy Tiger');
  }
}

class NewSessionPage extends StatefulWidget {
  const NewSessionPage({super.key, required this.title});

  final String title;

  @override
  State<NewSessionPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NewSessionPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(

        child: Column(

          mainAxisAlignment: .center,
          children: [
            const Text('This is the new page'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pop(context);},
        tooltip: 'Nav -> Home',
        child: const Icon(Icons.arrow_circle_left_rounded,
                          size: 40.0,),
      ),
    );
  }
}
