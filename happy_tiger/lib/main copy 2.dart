import 'package:flutter/material.dart';

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
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
