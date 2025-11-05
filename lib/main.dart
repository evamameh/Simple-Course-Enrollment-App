import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/enrollment_provider.dart';
import 'screens/student_form_screen.dart';
import 'screens/course_selection_screen.dart';
import 'screens/enrollment_review_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => EnrollmentProvider(),
      child: const CourseEnrollmentApp(),
    ),
  );
}

class CourseEnrollmentApp extends StatelessWidget {
  const CourseEnrollmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course Enrollment App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Verdana',
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16.0),
          bodyMedium: TextStyle(fontSize: 14.0),
          titleMedium: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Verdana',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StudentFormScreen(),
        '/courses': (context) => const CourseSelectionScreen(),
        '/review': (context) => const EnrollmentReviewScreen(),
      },
    );
  }
}
