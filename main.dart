import 'package:flutter/material.dart';
import 'package:my_provider/change_course.dart';
import 'package:my_provider/my_courses.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ChangeCourse(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xff5c67c1),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                    'We are learning' +
                        Provider.of<ChangeCourse>(context).subject,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
            ),
            MyCourses(courses: 'Getx'),
            MyCourses(courses: 'Bloc'),
            MyCourses(courses: 'Cubit'),
          ],
        ),
      ),
    );
  }
}
