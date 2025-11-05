<<<<<<< HEAD
# course_enrollment_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=======
# Simple-Course-Enrollment-App
This Flutter app allows students to:
1. Fill in their personal information.
2. Select a course.
3. Review and confirm their enrollment.

## Features
- Input student information (first name, last name, email, student ID)
- Select a course from a list
- Review student and course details before confirming enrollment
- Confirm enrollment and return to the student form for a new entry

## Project Structure
- lib/
- │
- ├── main.dart                                                                                                                           - # Entry point of the app
- │
- ├── models/
- │   ├── student.dart                                                                                                                    - # Defines the Student model (first name, last name, etc.)
- │   └── course.dart                                                             - # Defines the Course model (name, instructor, credits)
- │
- ├── providers/
- │   └── enrollment_provider.dart              - # Manages app state using ChangeNotifier (student & course data)
- │
- └── screens/
    - ├── student_form_screen.dart    - # Screen 1: Student information input form
    - ├── course_selection_screen.dart - # Screen 2: Course selection screen
    - └── enrollment_review_screen.dart - # Screen 3: Enrollment review and confirmation screen
 
## How It Works
1. Student Form Screen – Users fill in their personal details.
2. Course Selection Screen – Users choose a course from the list.
3. Enrollment Review Screen – Displays all details for final confirmation.
4. On confirmation, the form resets and returns to the first screen.

## How to Run
1. Make sure you have Flutter installed.
2. Clone this repository or copy the project folder.
3. Open the folder in your preferred IDE (e.g., VS Code or Android Studio).
4. Run the following command in the terminal:

- flutter pub get
- flutter run


>>>>>>> 7df8e80d820c9c65a782cb99646cfbea9bd7b59f
