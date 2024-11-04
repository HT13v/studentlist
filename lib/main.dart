import 'package:flutter/material.dart';
import 'add_student.dart';
import 'view_students.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Information App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/add': (context) => AddStudentScreen(),
        '/view': (context) => ViewStudentsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200, // Set the desired width
              height: 60,  // Set the desired height
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/add'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button background color
                ),
                child: Text(
                  'Add Student',
                  style: TextStyle(fontSize: 18), // Increase font size
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing between buttons
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/view'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button background color
                ),
                child: Text(
                  'View All Students',
                  style: TextStyle(fontSize: 18), // Increase font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
