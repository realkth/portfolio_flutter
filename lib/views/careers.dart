import 'package:flutter/material.dart';

class CareersScreen extends StatefulWidget {
  CareersScreen({Key key}) : super(key: key);

  @override
  _CareersScreenState createState() => _CareersScreenState();
}

class _CareersScreenState extends State<CareersScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      child: Center(
        child: Text('Careers'),
      ),
    );
  }
}
