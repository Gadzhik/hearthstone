import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Добавляем цвет для AppBar
        appBarTheme: AppBarTheme(
          // Посмотреть как можно добавить background image
          backgroundColor: const Color.fromARGB(255, 129, 73, 9),
        ),
        primarySwatch: Colors.blue,
      ),
      // Подключаем первый экран из auth_widget
      home: AuthWidget(),
    );
  }
}
