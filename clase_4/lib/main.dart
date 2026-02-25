import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('quemen peri')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute( 
                builder: (context) => const MainApp2(),
              ));
            },
            child: const Text('venezuela 2,0'),
          ),
        ),
      ),
    );
  }
}


class MainApp2 extends StatelessWidget {
  const MainApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('quemen peri')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(
                builder: (context) => const MainApp(),
              ));
            },
            child: const Text('comen palomas'),
          ),
        ),
      ),
    );
  }
}