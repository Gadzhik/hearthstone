import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  // Указываем какой из элементов выделен по-умолчанию
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      "Screen1",
    ),
    Text(
      "Screen2",
    ),
    Text(
      "Screen3",
    ),
  ];

// Добавим функцию, которая вызывается в момент вызова вкладки
  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    // Обновляем состояние(State)
    setState(() {
      // Дает возможность переключаться по вкладкам(не больше)
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HearthStone main screen"),
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      // Add Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // Добавляем новый экран
            label: 'Screen1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Screen2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Screen3',
          ),
        ],
        // Добавляем функцию(onTap), которая принимает индекс, который был нажат
        onTap: onSelectTab,
      ),
    );
  }
}
