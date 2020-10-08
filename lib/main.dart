import 'package:flutter/material.dart';
import 'views/careers.dart';
import 'views/projects.dart';
import 'views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstPage(title: 'Frontend developer Taehoon Kim'),
      routes: <String, WidgetBuilder>{
        '/ProjectsScreen': (BuildContext context) => new ProjectsScreen(),
        '/CareersScreen': (BuildContext context) => new CareersScreen(),
        '/HomeScreen': (BuildContext context) => new HomeScreen(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  FirstPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomeScreen(),
    CareersScreen(),
    ProjectsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Careers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Projects',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lime,
        onTap: _onItemTapped,
      ),
      body: _children[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        tooltip: 'Send mail',
        onPressed: () => {},
        child: Icon(Icons.mail),
      ),
    );
  }
}
