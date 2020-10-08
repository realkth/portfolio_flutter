import 'package:flutter/material.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import '../components/project/msd.dart';
import '../components/project/msm.dart';
import '../components/project/redpen.dart';
import '../components/project/msc.dart';
import '../components/project/making_pack.dart';

class ProjectsScreen extends StatefulWidget {
  ProjectsScreen({Key key}) : super(key: key);

  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final _currentPageNotifier = ValueNotifier<int>(0);
  _buildCircleIndicator() {
    return RotatedBox(
      quarterTurns: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: 5,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
        scrollDirection: Axis.vertical,
        onPageChanged: (int index) {
          _currentPageNotifier.value = index;
        },
        children: [
          ModiStudioDekstop(),
          ModiStudioMobile(),
          Redpen(),
          ModiStudioCloud(),
          MakingPack()
        ],
      ),
      Align(
          alignment: FractionalOffset.centerRight,
          child: _buildCircleIndicator())
    ]);
  }
}
