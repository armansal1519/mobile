import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneCourseScreen extends StatefulWidget {
  const OneCourseScreen({Key? key, required this.courseId }) : super(key: key);
  final String courseId;

  @override
  State<OneCourseScreen> createState() => _OneCourseScreenState();
}

class _OneCourseScreenState extends State<OneCourseScreen> {
  String _courseId = "default";

  @override
  void initState() {
    super.initState();
    _courseId = widget.courseId;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("one course $_courseId"),
      ),
    );
  }
}
