import 'package:flutter/material.dart';
import 'package:my_provider/change_course.dart';
import 'package:provider/provider.dart';

class MyCourses extends StatelessWidget {
  final String courses;
  const MyCourses({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ChangeCourse>(context, listen: false)
            .changeSubjects(courses);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
            color: Color(0xff5c67c1), borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(courses,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
