import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_colors.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_screen/main_screen_widget.dart';

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
          backgroundColor: AppColors.mainDarkBlue,
        ),
        // Применяем тему к bottomNavigationBar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          // Меняем цвета иконок бара
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
        primarySwatch: Colors.blue,
      ),
      // Указываем маршруты которые есть в приложении (экраны)
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      // Подключаем главный экран, тот с которого стартует приложение
      initialRoute: '/auth',
      // Страница для перехода, если маршрута не сущестсвует.
      // Может возвращать любые роуты
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text('Navigation Error'),
            ),
          );
        });
      },
    );
  }
}
