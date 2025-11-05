import 'package:flutter/foundation.dart';
import '../models/student.dart';
import '../models/course.dart';

class EnrollmentProvider extends ChangeNotifier{
  Student? student;
  Course? course;

  void setStudent (Student newStudent) {
    student = newStudent;
    notifyListeners();
  }

  void setCourse (Course newCourse) {
    course = newCourse;
    notifyListeners();
  }

  void clear() {
    student = null;
    course = null;
    notifyListeners();
  }
}