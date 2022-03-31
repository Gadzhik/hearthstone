// Для сохранения данных будем использовать StateFull widget
import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deceptively Simple, Insanely Fun'),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Добавляем переменную для стилей текста TextStyle
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 15),
          _FormWidget(),
          // Делаем отступ сверху
          SizedBox(height: 15),
          Text(
            "Welcome to Hearthstone, the strategy card game that's easy to learn but impossible to put down!",
            style: textStyle,
          ),
          SizedBox(height: 15),
          Text(
            "Add Button Play Free",
            style: textStyle,
          ),
          Text(
            "Add Button Learn More",
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

// Форма регистрации, которая будет хранить состояние, введенный текст и прочее
class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    // Добавляем переменную для стилей формы регистрации
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    // Добавляем границу для полей ввода
    final textFieldDecorator = const InputDecoration(
      border: OutlineInputBorder(),
      // Уменьшаем отступы текста от границ полей ввода
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    return Column(
      // Выравниваем текст по левой стороне
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username:",
          style: textStyle,
        ),
        TextField(
          // Добавляем границу для полей ввода
          decoration: textFieldDecorator,
        ),
        Text(
          "Password:",
          style: textStyle,
        ),
        TextField(
          // Добавляем границу для полей ввода
          decoration: textFieldDecorator,
        ),
      ],
    );
  }
}


// time: 36.00