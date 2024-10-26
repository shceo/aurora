import 'dart:async';
import 'package:aurora/src/exports.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(
    () async {
      final initializationProgress =
          ValueNotifier<({int progress, String message})>(
        (progress: 0, message: 'Начало инициализации'),
      );
      runApp(SplashScreen(progress: initializationProgress));

      Timer.periodic(
        const Duration(milliseconds: 80),
        (timer) {
          final currentProgress = initializationProgress.value.progress + 1;
          if (currentProgress >= 100) {
            initializationProgress.value =
                (progress: 100, message: 'Подождите...');
            timer.cancel();

            Future.delayed(
              const Duration(seconds: 1),
              () {
                runApp(const App());
              },
            );
          } else {
            initializationProgress.value = (
              progress: currentProgress,
              message: 'Загрузка... $currentProgress%'
            );
          }
        },
      );
    },
    (error, stackTrace) {
      debugPrint('Error: $error');
    },
  );
}
