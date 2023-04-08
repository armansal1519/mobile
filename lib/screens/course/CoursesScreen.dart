import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

import 'package:mobile/layout/BottomBar.dart';
import 'package:mobile/services/pb/course.pbgrpc.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  late ClientChannel _channel;
  late CourseServiceClient _stub;
  // late ResponseFuture<SearchCourseResponse> courses;
 late List<Course> courses=[];
  @override
  void initState() {
    super.initState();

    _channel=ClientChannel(
        "10.0.2.2",
        port: 30032,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()));

    _stub=CourseServiceClient(_channel);

    SearchCourseRequest request=SearchCourseRequest();
    request.limit=10;
    request.offset=0;
    request.orderBy="";
    request.searchPhrase="go";
    _stub.search(request).then((res) => {
      setState((){
        courses=res.courses;
      })
    });

  }

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty){
      return  const Scaffold(
        body: Center(
          child: Text("dont have data"),
        ),
      );
    }
    else{
      return Scaffold(
        body: Center(
          child: Text("${courses[0]}"),
          // child: Text("have data${courses[0].id}"),
        ),
      );
    }

  }
}
