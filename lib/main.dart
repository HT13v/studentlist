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
              width: 200, 
              height: 60,  
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/add'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                ),
                child: Text(
                  'Add Student',
                  style: TextStyle(fontSize: 18), 
                ),
              ),
            ),
            SizedBox(height: 20), 
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/view'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                ),
                child: Text(
                  'View All Students',
                  style: TextStyle(fontSize: 18), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
