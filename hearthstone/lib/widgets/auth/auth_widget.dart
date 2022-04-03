// Для сохранения данных будем использовать StateFull widget
import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/main_screen/main_screen_widget.dart';

import '../../Theme/app_button_style.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          _FormWidget(),
          // Делаем отступ сверху
          SizedBox(height: 15),
          Text(
            "Welcome to Hearthstone, the strategy card game that's easy to learn but impossible to put down!",
            style: textStyle,
          ),
          SizedBox(height: 5),
          // Кнопка Play Free
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text("Play Free"),
          ),
          SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text("Learn More"),
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
  // Добавляем контроллеры
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  // Показываем сообщение о валидации на экране
  String? errorText = null;

  // Добавляем форму авторизации
  void _auth() {
    // По нажатии кнопки _auth, мы обращаемся к _loginTextController и получаем от него text
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    // Валидируем
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      // Извлекаем навигатор из контекста и добавляем навигацию к MainScreenWidget
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Login Error!';
    }
    setState(() {});
  }

  // Добавляем форму сброса пароля
  void _resetPassword() {
    print("Reset Passwd");
  }

  @override
  Widget build(BuildContext context) {
    // Добавляем переменную для стилей формы регистрации
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    // Задаем цвет рамки полей регистрации
    final color = Color.fromARGB(255, 90, 226, 0);
    // Добавляем границу для полей ввода
    final textFieldDecorator = const InputDecoration(
      border: OutlineInputBorder(),
      // Уменьшаем отступы текста от границ полей ввода
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    return Column(
      // Выравниваем текст по левой стороне
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              fontSize: 17,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 15),
        ],
        Text(
          "Username:",
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextField(
          // Добавляем контроллер
          controller: _loginTextController,
          // Добавляем границу для полей ввода
          decoration: textFieldDecorator,
        ),
        SizedBox(height: 15),
        Text(
          "Password:",
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextField(
          // Добавляем контроллер
          controller: _passwordTextController,
          // Добавляем границу для полей ввода
          decoration: textFieldDecorator,
          // Скрываем символы в поле пароля
          obscureText: true,
        ),
        SizedBox(height: 25),
        // Добавляем кнопки
        Row(
          children: [
            TextButton(
              onPressed: _auth,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                ),
              ),
              child: Text('Login'),
            ),
            SizedBox(width: 25),
            TextButton(
              onPressed: _resetPassword,
              style: AppButtonStyle.linkButton,
              child: Text('Reset password'),
            ),
          ],
        ),
      ],
    );
  }
}

// 31 less - 
