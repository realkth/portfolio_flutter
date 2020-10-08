import 'package:flutter/material.dart';

class Redpen extends StatelessWidget {
  const Redpen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      child: Center(
        child: Text('redpen'),
      ),
    );
  }
}
