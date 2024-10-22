import 'dart:async';
import 'package:flutter/material.dart';

void main() => runZonedGuarded(
      () => runApp(const App()), 
      (error, stackTrace) {
        print('Error: $error');
  
      },
    );

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
