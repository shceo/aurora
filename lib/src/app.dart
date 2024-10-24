import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Главный экран'),
        ),
        body: const Center(
          child: Text('Aurora music is here!'),
        ),
      ),
    );
  }
}
