import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/enrollment_provider.dart';

class EnrollmentReviewScreen extends StatelessWidget {
  const EnrollmentReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final enrollment = Provider.of<EnrollmentProvider>(context);
    final student = enrollment.student;
    final course = enrollment.course;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Enrollment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (student == null || course == null)
            ? const Center(
                child: Text(
                  'No data available',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo.shade200),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Student Information',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text('Name: ${student.firstName} ${student.lastName}'),
                        Text('Email: ${student.email}'),
                        Text('ID: ${student.studentID}'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo.shade200),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selected Course',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text('Course: ${course.name}'),
                        Text('Instructor: ${course.instructor}'),
                        Text('Credits: ${course.credits}'),
                      ],
                    ),
                  ),

                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            title: const Text(
                              'Enrollment Successful!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: const Text(
                              'You have been enrolled successfully.',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  enrollment.clear();
                                  
                                  Navigator.popUntil(
                                    context,
                                    ModalRoute.withName('/'),
                                  );
                                },
                                child: const Text(
                                  'OK',
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Confirm Enrollment',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
