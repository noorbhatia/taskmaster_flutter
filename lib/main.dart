import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/task_screen.dart';
import 'task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (_) => Data(),
      child: MaterialApp(
        home: TaskScreen(),
        theme: ThemeData(
          primaryColor: Color(0xFFFC5B3F),
          accentColor: Color(0xFF3376FF),
          fontFamily: 'Squada',
        ),
      ),
    );
  }
}
