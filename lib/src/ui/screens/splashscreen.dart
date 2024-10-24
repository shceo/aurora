import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final ValueNotifier<({int progress, String message})> progress;

  const SplashScreen({required this.progress, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ValueListenableBuilder(
            valueListenable: progress,
            builder: (context, value, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(value: value.progress / 100),
                  const SizedBox(height: 20),
                  Text('${value.message} (${value.progress}%)'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}