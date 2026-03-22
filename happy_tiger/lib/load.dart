import 'package:flutter/material.dart';


class LoadSession extends StatelessWidget {
  const LoadSession({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLoadPage(title: 'Happy Tiger');
  }
}

class MyLoadPage extends StatefulWidget {
  const MyLoadPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoadPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLoadPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the load page')
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
