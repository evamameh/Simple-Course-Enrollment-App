import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/course.dart';
import '../provider/enrollment_provider.dart';

class CourseSelectionScreen extends StatelessWidget {
  const CourseSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      Course(id: '001', name: 'SP ELEC-1A', credits: 3, instructor: 'Mr. Bandalan'),
      Course(id: '002', name: 'SP ELEC-1B', credits: 3, instructor: 'Mr. Formentera'),
      Course(id: '003', name: 'FREE ELECTIVE-1', credits: 3, instructor: 'Mr. Kilong-Kilong'),
      Course(id: '004', name: 'FREE ELECTIVE-2', credits: 3, instructor: 'Mr. Formentera'),
      Course(id: '005', name: 'IT Review', credits: 3, instructor: 'Mr. Gadiane'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Course'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            final course = courses[index];
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 6.0),
              child: ListTile(
                title: Text(
                  course.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),

                subtitle: Text(
                  '${course.instructor} • ${course.credits} credits',
                  style: const TextStyle(
                  ),
                ),

                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo, size: 18),
                onTap: () {
                  Provider.of<EnrollmentProvider>(context, listen: false)
                      .setCourse(course);
                  Navigator.pushNamed(context, '/review');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
