import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/services/pb/course.pb.dart';

class CourseWidget extends StatefulWidget {

  CourseWidget({Key? key,
  required this.course,
  }) : super(key: key);

  Course course;

  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${widget.course}"),),
    );
  }
}
